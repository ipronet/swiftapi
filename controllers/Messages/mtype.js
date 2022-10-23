const Model = require("../../model/Messages/Mtype");
const asynHandler = require("../../middleware/async");
const { head } = require("../../routes/Messages");

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
    return res.status(400).json({
      Status: 0,
      Message: `Please provide Message Type`,
    });
  }

  let getmsgType = await Model.MessageTypeRecords(messagetype);
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
});

exports.SaveMessage = asynHandler(async (req, res, next) => {
  const { jsondata,createdBy } = req.body;
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

   return await setupMessage(messagetype, msgData,createdBy);
  }

  console.log('record already exist');
  console.log(JSON.stringify(jsondata));
  let dbresult = await Model.DynamicMsg(messagetype, msgData);
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

  async function setupMessage(paramone, paramtwo,paramthree) {

    const record = {
      message_type: paramone,
      createdBy:paramthree,
    };
    let recordResult = await Model.msgRecord(record);
    let dbresult = await Model.CreateMessage(paramone);

    if (recordResult.affectedRows === 1 && dbresult.results) {
      console.log('message table created');
        console.log('message record created');
        //save messages
        let dbresult = await Model.DynamicMsg(paramone, paramtwo);
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
  let msgtype = req.body.messagetype
  let messagetype = `m${msgtype}`
  if (!messagetype) {
    return res.status(400).json({
      Status: 0,
      Message: `Please provide Message Type`,
    });
  }

  let dbresult = await Model.GetMessages(messagetype);



  if (dbresult.length == 0) {
    return res.status(200).json({
      Status: 0,
      Message: "Sorry, Failed To Retrieve Data",
      Data: [],
    });
  }

  let headers = await Model.GetHeaders(messagetype);
  
  if (!headers) {
    return res.status(200).json({
      Status: 0,
      Message: "Sorry, Failed To Retrieve Header Data",
      Data: [],
    });
  }
  res.json({
    Status: 1,
    Message: "Record Found",
    Data: dbresult,
    headerData: headers ? JSON.parse(headers.jsondata) :[]
    // headerData: Object.keys(headresult),
  });
});
exports.OnlyMessage = asynHandler(async (req, res, next) => {
  let msgtype = req.body.messagetype
  let messagetype = `m${msgtype}`
  if (!messagetype) {
    return res.status(400).json({
      Status: 0,
      Message: `Please provide Message Type`,
    });
  }

  let dbresult = await Model.GetMessages(messagetype);



  if (dbresult.length == 0) {
    return res.status(200).json({
      Status: 0,
      Message: "Sorry, Failed To Retrieve Data",
      Data: [],
    });
  }


  res.json({
    Status: 1,
    Message: "Record Found",
    Data: dbresult,
  });
});
exports.GetMessageRecords = asynHandler(async (req, res, next) => {
let dbresult = await Model.MessageRecords();


if (dbresult.length == 0) {
  return res.status(200).json({
    success: false,
    message: "Sorry, Failed To Retrieve Data",
    Data: [],
  });
}
let bigData = []
for (const iterator of dbresult) {
  let headers = await Model.GetHeaders(iterator.message_type);
  headers ? iterator["hasHeader"] = true:iterator["hasHeader"] = false
  bigData.push(iterator)
}
res.json({
  Status: 1,
  Message: "Record Found",
  Data: dbresult,
});
});

exports.updateHeaders = asynHandler(async (req, res, next) => {
  const { isdefault, version, jsondata } = req.body;
  console.log(req.body)
  let msgtype = req.body.messagetype
  let messagetype = `m${msgtype}`
  if (!messagetype) {
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
  };
  let result = await Model.UpdateHeaders(headerData, messagetype);

  if (result.affectedRows === 1) {
    res.status(200).json({
      Status: 1,
      Message: `Record Updated`,
    });
  } else {
    res.status(401).json({ Status: 0, Message: "Error Updating Record" });
  }
});