const Swift = require("../../model/Settings/AlertProfileSettings");
const asynHandler = require("../../middleware/async");
const ErrorResponse = require("../../utls/errorResponse");
const { PickHistory } = require("../../helper/utilfunc");
const systemDate = new Date().toISOString().slice(0, 19).replace("T", " ");

exports.CreateProfile = asynHandler(async (req, res, next) => {
    const profileData = {
      CustomerName : req.body.CustomerName ,
      email: req.body.email,
      sms:req.body.sms,
      account_number: req.body.account_number,
      idMsgType : req.body.idMsgType || '103' ,
      idFlow :req.body.idFlow || 'inward' ,
      message_template: req.body.message_template || 'default',
      internal_alert_email: req.body.internal_alert_email,
      idalert_type:req.body.idalert_type,
      status :req.body.status ,
      currencytype:req.body.currencytype
    };
  
    let result = await Swift.create(profileData);
    if (result.affectedRows === 1) {
      PickHistory({ message: `Record Created Successfully`, function_name: 'CreateProfile', date_started: systemDate,  event: "Create Alert Profile",logtype:1 }, req)

     return  res.status(200).json({
        Status: 1,
        Message: `Record Created Successfully`,
      });
    } else {
        PickHistory({ message: `Error saving alert profile record`, function_name: 'CreateProfile', date_started: systemDate,  event: "Create Alert Profile",logtype:0 }, req)
       return res.status(500).json({ Status: 0, Message: "Error Saving Record" });
    }
  });

exports.GetProfiles = asynHandler(async (req, res, next) => {
  let results = await Swift.all();
  if (results.length == 0) {
    PickHistory({ message: `No record found`, function_name: 'GetProfiles', date_started: systemDate,  event: "View Alert Profiles",logtype:0 }, req)
    return res.status(200).json({
      success: false,
      message: "Sorry, Failed To Retrieve Data",
      Data: []
    });
  }
  PickHistory({ message: `Viewed ${results.length} alert profile records`, function_name: 'GetProfiles', date_started: systemDate,  event: "View Alert Profiles",logtype:0 }, req)
  res.json({
    Status: 1,
    Message: "Record Found",
    Data: results,
  });
});

exports.SingleProfile = asynHandler(async (req, res, next) => {
    let id = req.body.id;
    if (!id) {
      PickHistory({ message: `No id provided in the request body`, function_name: 'SingleProfile', date_started: systemDate,  event: "View single alert profile",logtype:0 }, req)
      return res.status(400).json({
        Status: 0,
        Message: `Please provide id`,
      });
    }
    let dbresult = await Swift.find(id);
    if (!dbresult) {
      PickHistory({ message: `No record found`, function_name: 'SingleProfile', date_started: systemDate,  event: "View single alert profile",logtype:0 }, req)
       return res.status(200).json({
        Status: 0,
        Data: [],
        Message: `No record found`,
      });
    }
    PickHistory({ message: `Viewed ${id} alert profile record`, function_name: 'SingleProfile', date_started: systemDate,  event: "View single alert profile",logtype:1 }, req)
     res.json({
      Status: 1,
      Message: "Record Found",
      Data: dbresult,
    });
  });

exports.updateProfile = asynHandler(async (req, res, next) => {
  console.log(req.body);
  const  updatedAt =  new Date().toISOString().slice(0, 19).replace("T", " ")
  let payload = req.body
  payload.updatedAt = updatedAt
  let id = req.body.id;
  if (!id) {
    PickHistory({ message: `No id provided in the request body`, function_name: 'updateProfile', date_started: systemDate,  event: "Update alert profile record",logtype:0 }, req)
    return res.status(400).json({
      Status: 0,
      Message: `Please provide id`,
    });
  }

  let result = await Swift.update(payload, id);

  if (result.affectedRows === 1) {
    PickHistory({ message: `Profile with ${id} record has been updated from db`, function_name: 'updateProfile', date_started: systemDate,  event: "Update Alert Profile",logtype:1 }, req)

    return res.status(200).json({
      success: true,
      message: `Record Updated`,
    });
  } else {
    PickHistory({ message: `Failed to update record from db`, function_name: 'updateProfile', date_started: systemDate,  event: "Update Alert Profile",logtype:0 }, req)
    return res.status(401).json({ success: false, message: "Error Updating Record" });
  }
});

exports.RemoveProfile = asynHandler(async (req, res, next) => {
    let id = req.body.id;
  
  
    const newData = {
      status: 0,
      deletedAt: new Date().toISOString().slice(0, 19).replace("T", " "),
  
    };
    if (!id) {
      PickHistory({ message: `No id provided in the request body`, function_name: 'RemoveProfile', date_started: systemDate,  event: "Delete alert profile",logtype:0 }, req)

      return res.status(400).json({
        Status: 0,
        Message: `Please provide an id`,
      });
    }
    let result = await Swift.update(newData, id);
  
  
  
    if (result.affectedRows === 1) {
      PickHistory({ message: `Profile with ${id} record has been deleted from db`, function_name: 'RemoveProfile', date_started: systemDate,  event: "Delete alert profile",logtype:1 }, req)
       return res.status(200).json({
        Status: 1,
        Message: `Record Deleted`,
      });
    } else {
      PickHistory({ message: `Failed to delete record from db`, function_name: 'RemoveProfile', date_started: systemDate,  event: "Delete alert profile",logtype:0 }, req)
      return res.status(500).json({ Status: 0, Message: "Error Removing Record" });
    }
  });
