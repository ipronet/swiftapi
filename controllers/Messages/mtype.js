const Model = require("../../model/Messages/Mtype");
const MpermissionModel = require("../../model/Messages/Mpermission");
const asynHandler = require("../../middleware/async");
const { AutoSaveMessageRecordInfo } = require("../../helper/autoSave");
const axios = require('axios');
const { PickHistory } = require("../../helper/utilfunc");
const systemDate = new Date().toISOString().slice(0, 19).replace("T", " ");
exports.CreateMessage = asynHandler(async (req, res, next) => {
  let table = req.body.tableName;
  let createdBy = req.body.createdBy;
  if (!table) {
    return res.status(400).json({
      Status: 0,
      Message: `Please provide Table Name`,
    });
  }

  const record = {
    message_type: `m${table}`,
    createdBy,
  };
  let dbresult = await Model.CreateMessage(`m${table}`);
  if (dbresult.results) {
    let recordResult = await Model.msgRecord(record);
    if (recordResult.affectedRows === 1) {
      res.json({
        Status: 1,
        Message: `Record Created Successfully`,
      });
    } else {
      res.status(500).json({
        Status: 0,
        Message: "Error Saving Message Table Record",
        extra: "Record not Saved",
      });
    }
  } else {
    res.status(500).json({
      Status: 0,
      Message: "Error Saving Message Table",
      extra: "Table Record not Saved",
    });
  }
});

exports.CreateHeaders = asynHandler(async (req, res, next) => {
  const { isdefault, version, jsondata, createdBy } = req.body;
  let msgtype = req.body.messagetype;
  let messagetype = `m${msgtype}`;
  if (!messagetype) {
    PickHistory({ message: "No message type found in request", function_name: 'CreateHeaders', date_started: systemDate,  event: "Create message header",logtype:0 }, req)
    return res.status(400).json({
      Status: 0,
      Message: `Please provide Message Type`,
    });
  }

  let getmsgType = await Model.MessageTypeRecords(messagetype);
  PickHistory({ message:`No table record exist for ${messagetype}`, function_name: 'CreateHeaders', date_started: systemDate,  event: "Create message header",logtype:0 }, req)
  if (!getmsgType) {
    return res.status(400).json({
      Status: 0,
      Message: `Message Table Does Not Exist`,
    });
  }

  const headerData = {
    messagetype,
    isdefault,
    version,
    jsondata: JSON.stringify(jsondata),
    createdBy,
  };
  let dbresult = await Model.msgHeaders(headerData);
  if (dbresult.affectedRows) {
    PickHistory({ message:`New header created for ${messagetype}`, function_name: 'CreateHeaders', date_started: systemDate,  event: "Create message header",logtype:0 }, req)
    return res.json({
      Status: 1,
      Message: `Record Created Successfully`,
    });
  } else {
    PickHistory({ message:`Failed to save header record for ${messagetype}`, function_name: 'CreateHeaders', date_started: systemDate,  event: "Create message header",logtype:0 }, req)
    return res.status(500).json({
      Status: 0,
      Message: "Error Saving Record",
    });
  }
});

exports.SaveMessage = asynHandler(async (req, res, next) => {
  const { jsondata, createdBy } = req.body;
  let msgtype = req.body.messagetype;
  let messagetype = `m${msgtype}`;
  const msgData = {
    docname: jsondata.docname,
    dir: jsondata.dir,
    sender: jsondata.Sender,
    reciever: jsondata.Reciever,
    jsondata: JSON.stringify(jsondata),
    cdatetime: new Date(jsondata.cdatetime).toISOString().slice(0, 19).replace("T", " "),
  };
  if (!messagetype) {
    return res.status(400).json({
      Status: 0,
      Message: `Please provide Message Type Name`,
    });
  }

  let getmsgType = await Model.MessageTypeRecords(messagetype);
  if (!getmsgType) {

    //Run Message function

    return await setupMessage(messagetype, msgData, createdBy);
  }

  console.log('record already exist');
  console.log(JSON.stringify(jsondata));
  let dbresult = await Model.DynamicMsg(messagetype, msgData);
  msgData.messagetype = messagetype
  AutoSaveMessageRecordInfo(msgData)
  if (dbresult.affectedRows) {
    res.json({
      Status: 1,
      Message: `Record Created Successfully`,
    });
  } else {
    res.status(500).json({
      Status: 0,
      Message: "Error Saving Record",
    });
  }

  async function setupMessage(paramone, paramtwo, paramthree) {

    const record = {
      message_type: paramone,
      createdBy: paramthree,
    };
    let recordResult = await Model.msgRecord(record);
    let dbresult = await Model.CreateMessage(paramone);

    if (recordResult.affectedRows === 1 && dbresult.results) {
      console.log('message table created');
      console.log('message record created');
      //save messages
      let dbresult = await Model.DynamicMsg(paramone, paramtwo);
      paramtwo.messagetype = paramone
      AutoSaveMessageRecordInfo(paramtwo)

      if (dbresult.affectedRows) {
        console.log('saving messages');
        res.json({
          Status: 1,
          Message: `Record Created Successfully`,
        });
      } else {
        res.status(500).json({
          Status: 0,
          Message: "Error Saving Record",
        });
      }
    } else {
      res.status(500).json({
        Status: 0,
        Message: "Error Saving Message Table Record",
        extra: "Record not Saved",
      });
    }
  }

});

exports.GetMessages = asynHandler(async (req, res, next) => {
  console.log(req.body);
  let start = req.body.start;
  let end = req.body.end;
  if (!start || !end) {
    PickHistory({ message: "start date and end date not found in request", function_name: 'GetMessages', date_started: systemDate,  event: "View message with date range",logtype:0 }, req)
   return res.status(200).json({
      Status: 0,
      Data: [],
      Message: `Please provide start and end date`,
    });
  }
  let defLimit = req.body.limit
  var datatoday = new Date(end);
  var datatodays = datatoday.setDate(new Date(datatoday).getDate() + 1);
  todate = new Date(datatodays);
  let msgtype = req.body.messagetype
  let messagetype = `m${msgtype}`
  if (!messagetype) {
    PickHistory({ message: "No message type found in request", function_name: 'GetMessages', date_started: systemDate,  event: "View message with date range",logtype:0 }, req)
    return res.status(400).json({
      Status: 0,
      Message: `Please provide Message Type`,
    });
  }

  let dbresult = await Model.GetMessages(messagetype, start, end);



  if (dbresult.length == 0) {
    PickHistory({ message: `Sorry, no message record found for messagetype ${messagetype}`, function_name: 'GetMessages', date_started: systemDate,  event: "View message with date range",logtype:0 }, req)
   return res.status(200).json({
      Status: 0,
      Message: "Sorry, Failed To Retrieve Data",
      Data: [],
    });
  }

  let headers = await Model.GetHeaders(messagetype);
  PickHistory({ message: `Sorry, no message header record found for messagetype ${messagetype}`, function_name: 'GetMessages', date_started: systemDate,  event: "View message with date range",logtype:0 }, req)

  if (!headers) {
    return res.status(200).json({
      Status: 0,
      Message: "Sorry, Failed To Retrieve Header Data",
      Data: [],
    });
  }

  
   let resx = await axios.get('http://localhost:9091/getlogo');
   let datax = resx.data;
  // console.log("State -- "+datax.state);
  PickHistory({ message: `Viewed ${dbresult.length} records for messagetype ${messagetype}`, function_name: 'GetMessages', date_started: systemDate,  event: "View message with date range",logtype:1 }, req)
  res.json({
    Status: 1,
    Message: "Record Found",
    Data: dbresult,
    headerData: headers ? JSON.parse(headers.jsondata) : [],
    logo: datax.message
  });
});

exports.LimitMessages = asynHandler(async (req, res, next) => {
  
  let defLimit = req.body.limit || 500
  let msgtype = req.body.messagetype
  let messagetype = `m${msgtype}`
  if (!messagetype) {
    PickHistory({ message: "No message type found in request", function_name: 'LimitMessages', date_started: systemDate,  event: "View message with limit",logtype:0 }, req)
    return res.status(400).json({
      Status: 0,
      Message: `Please provide Message Type`,
    });
  }

  let dbresult = await Model.GetMessagesWithLimit(messagetype,defLimit);



  if (dbresult.length == 0) {
    PickHistory({ message: `Sorry, no message record found for messagetype ${messagetype}`, function_name: 'LimitMessages', date_started: systemDate,  event: "View message with limit",logtype:0 }, req)
   return res.status(200).json({
      Status: 0,
      Message: "Sorry, Failed To Retrieve Data",
      Data: [],
    });
  }

  let headers = await Model.GetHeaders(messagetype);

  if (!headers) {
    PickHistory({ message: `Sorry, no message header record found for messagetype ${messagetype}`, function_name: 'LimitMessages', date_started: systemDate,  event: "View message with limit",logtype:0 }, req)
    return res.status(200).json({
      Status: 0,
      Message: "Sorry, Failed To Retrieve Header Data",
      Data: [],
    });
  }

  let resx = await axios.get('http://localhost:9091/getlogo');
  let datax = resx.data;
  console.log("State -- "+datax.state)
  PickHistory({ message: `Viewed ${dbresult.length} records for messagetype ${messagetype}`, function_name: 'LimitMessages', date_started: systemDate,  event: "View message with limit",logtype:1 }, req)
  res.json({
    Status: 1,
    Message: "Record Found",
    Data: dbresult,
    headerData: headers ? JSON.parse(headers.jsondata) : [],
    logo: datax.message
  });
});

exports.OnlyMessage = asynHandler(async (req, res, next) => {
  console.log(req.body);
  let msgtype = req.body.messagetype
  let messagetype = `m${msgtype}`
  if (!messagetype) {
    PickHistory({ message: "No message type found in request", function_name: 'OnlyMessage', date_started: systemDate,  event: "View single message type record",logtype:0 }, req)
    return res.status(400).json({
      Status: 0,
      Message: `Please provide Message Type`,
    });
  }

  let dbresult = await Model.GetOnlyMessages(messagetype);
  if (!dbresult) {
    PickHistory({ message: `Sorry, no record found for messagetype ${messagetype}`, function_name: 'OnlyMessage', date_started: systemDate,  event: "View single message type record",logtype:0 }, req)
   return res.status(200).json({
      Status: 0,
      Message: "Sorry, no record found",
      Data: [],
    });
  }

 let headers = await Model.GetHeaders(messagetype);
 PickHistory({ message: `Viewed ${dbresult.length} records for ${messagetype}`, function_name: 'OnlyMessage', date_started: systemDate,  event: "View single message type record",logtype:1 }, req)

  res.json({
    Status: 1,
    Message: "Record Found",
    Data: dbresult,
    headerData: headers ? JSON.parse(headers.jsondata) : []
    // headerData: Object.keys(headresult),
  });


});

exports.GetMessageRecords = asynHandler(async (req, res, next) => {
  
  let dbresult = await Model.MessageRecords();
  if (dbresult.length == 0) {
    PickHistory({ message: "Sorry, Failed To Retrieve Message Data", function_name: 'GetMessageRecords', date_started: systemDate,  event: "View Message Record",logtype:0 }, req)
   return res.status(200).json({
      success: false,
      message: "Sorry, Failed To Retrieve Data",
      Data: [],
    });
  }
  let bigData = []
  for (const iterator of dbresult) {
    let headers = await Model.GetHeaders(iterator.message_type);
    headers ? iterator["hasHeader"] = true : iterator["hasHeader"] = false
    bigData.push(iterator)
  }
  PickHistory({ message: `Viewed ${bigData.length} message records`, function_name: 'GetMessageRecords', date_started: systemDate,  event: "View Message Record",logtype:1 }, req)
  res.json({
    Status: 1,
    Message: "Record Found",
    Data: dbresult,
  });
});
exports.GetPermittedMessageRecords = asynHandler(async (req, res, next) => {
  let roleid = req.headers.roleid
  let dbresult = await MpermissionModel.MessageRecords(roleid);
  if (dbresult.length == 0) {
    PickHistory({ message: "Sorry, Failed To Retrieve Message Data", function_name: 'GetPermittedMessageRecords', date_started: systemDate,  event: "View Message Record",logtype:0 }, req)
   return res.status(200).json({
      success: false,
      message: "Sorry, Failed To Retrieve Data",
      Data: [],
    });
  }
  let bigData = []
  for (const iterator of dbresult) {
    let headers = await Model.GetHeaders(`m${iterator.message_type}`);
    headers ? iterator["hasHeader"] = true : iterator["hasHeader"] = false
    bigData.push(iterator)
  }

  PickHistory({ message: `Viewed ${bigData.length} message records`, function_name: 'GetPermittedMessageRecords', date_started: systemDate,  event: "View Message Record",logtype:1 }, req)
  res.json({
    Status: 1,
    Message: "Record Found",
    Data: dbresult,
  });
});

exports.updateHeaders = asynHandler(async (req, res, next) => {
  const { isdefault, version, jsondata } = req.body;
  let msgtype = req.body.messagetype
  let messagetype = `m${msgtype}`
  if (!messagetype) {
    PickHistory({ message: "No message type found in request", function_name: 'updateHeaders', date_started: systemDate,  event: "Update Message Headers",logtype:0 }, req)
   return res.status(400).json({
      Status: 0,
      Message: `Please provide Message Type`,
    });
  }
  const headerData = {
    messagetype,
    isdefault,
    version,
    jsondata: JSON.stringify(jsondata),
    updatedAt: new Date().toISOString().slice(0, 19).replace("T", " "),
  };

  let result = await Model.UpdateHeaders(headerData, messagetype);
  console.log(result);
  if (result.affectedRows > 0) {
    PickHistory({ message: `${messagetype} headers has been updated`, function_name: 'updateHeaders', date_started: systemDate,  event: "Update Message Headers",logtype:1 }, req)
    return res.status(200).json({
      Status: 1,
      Message: `Record Updated`,
    });
  } else {
    PickHistory({ message: `Failed to update ${messagetype} headers`, function_name: 'updateHeaders', date_started: systemDate,  event: "Update Message Headers",logtype:0 }, req)
     return   res.status(401).json({ Status: 0, Message: "Error Updating Record" });
  }

});