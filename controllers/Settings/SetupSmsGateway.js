const Model = require("../../model/Settings/SmsGateWay");
const asynHandler = require("../../middleware/async");
const ErrorResponse = require("../../utls/errorResponse");
const { PickHistory } = require("../../helper/utilfunc");
const systemDate = new Date().toISOString().slice(0, 19).replace("T", " ");

exports.CreateGateway = asynHandler(async (req, res, next) => {
  const { gateway, gatewayurl, gatewaykeys, gatewaypassword, balance } =
    req.body;

  /**
   ** Check  Gateway.Update old records and set status to 1
   **/
  const Gateway = {
    gateway,
    gatewayurl,
    gatewaykeys,
    gatewaypassword,
    balance,
    status: 1,
  };
  let results = await Model.updateAll();

  if (results.affectedRows > 0 || results.affectedRows == 0) {
    const client = await Model.create(Gateway);
    if (client.affectedRows === 1) {
      PickHistory({ message: `New sms gateway created successfully`, function_name: 'CreateGateway', date_started: systemDate,  event: "Create SmsGateway",logtype:1 }, req)
        return res.status(200).json({
        Status: 1,
        Message: `Great, You Created an Gateway Statusfully`,
      });
    } else {
      PickHistory({ message: `Failed to insert new sms gateway record to db`, function_name: 'CreateGateway', date_started: systemDate,  event: "Create SmsGateway",logtype:0 }, req)
      return  res.status(404).json({
        Status: false,
        Message:
          "Sorry we could not register this new Gateway, please try again later",
      });
    }
  }
});

exports.GetGateways = asynHandler(async (req, res, next) => {
  let results = await Model.all();
  if (results.length == 0) {
    PickHistory({ message: `Sorry, Failed To Retrieve Data`, function_name: 'GetGateways', date_started: systemDate,  event: "View Sms Gateway",logtype:0 }, req)
     return res.status(200).json({
      Status: false,
      Message: "Sorry, Failed To Retrieve Data",
      Data: [],
    });
  }
  PickHistory({ message: `Viewed ${results.length} sms gateway records`, function_name: 'GetGateways', date_started: systemDate,  event: "View Sms Gateway",logtype:1 }, req)
  res.json({
    Status: 1,
    Message: "Record Found",
    Data: results,
  });
});

exports.ActiveGateway = asynHandler(async (req, res, next) => {
  let results = await Model.allActive();
  if (results.length == 0) {
    return res.status(200).json({
      Status: false,
      Message: "Sorry, Failed To Retrieve Data",
      Data: [],
    });
  }
  res.json({
    Status: 1,
    Message: "Record Found",
    Data: results,
  });
});

exports.updateGateways = asynHandler(async (req, res, next) => {
  let id = req.body.id;
  const newData = req.body
  let result = await Model.update(newData, id);

  if (result.affectedRows === 1) {
    PickHistory({ message: `Gateway with ${id} record has been updated from db`, function_name: 'updateGateways', date_started: systemDate,  event: "Update Gateway",logtype:1 }, req)
      return res.status(200).json({
      Status: 1,
      Message: `Record Updated`,
    });
  } else {
    PickHistory({ message: `Failed to update gateway with id = ${id}`, function_name: 'updateGateways', date_started: systemDate,  event: "Update Gateway",logtype:0 }, req)

    return res.status(401).json({ Status: false, Message: "Error Updating Record" });
  }
});

exports.SingleGateway = asynHandler(async (req, res, next) => {
  let id = req.body.id;
  if (!id) {
    PickHistory({ message: `No id provided in the request body`, function_name: 'SingleGateway', date_started: systemDate,  event: "View single gateway",logtype:0 }, req)
    return res.status(400).json({
      Status: 0,
      Message: `Please provide id`,
    });
  }
  let dbresult = await Model.find(id);
  if (!dbresult) {
    PickHistory({ message: `No record found for ${id}`, function_name: 'SingleGateway', date_started: systemDate,  event: "View single gateway",logtype:0 }, req)
    return res.status(200).json({
      Status: 0,
      Data: [],
      Message: `No record found`,
    });
  }
  PickHistory({ message: `Vied single record for gateway with id= ${id}`, function_name: 'SingleGateway', date_started: systemDate,  event: "View single gateway",logtype:1 }, req)
  res.json({
    Status: 1,
    Message: "Record Found",
    Data: dbresult,
  });
});

exports.RemoveSmsGateway = asynHandler(async (req, res, next) => {
  let id = req.body.id;

  if (!id) {
    PickHistory({ message: `No id provided in the request body`, function_name: 'RemoveSmsGateway', date_started: systemDate,  event: "Delete sms gateway",logtype:0 }, req)
     return res.status(400).json({
      Status: 0,
      Message: `Please provide id`,
    });
  }
  const newData = {
    status: 0,
    deletedAt: new Date().toISOString().slice(0, 19).replace("T", " "),
  };

  let result = await Model.update(newData, id);

  if (result.affectedRows === 1) {
    PickHistory({ message: `Gateway with id= ${id} has been deleted`, function_name: 'RemoveSmsGateway', date_started: systemDate,  event: "Delete sms gateway",logtype:1 }, req)
     return  res.status(200).json({
      Status: 1,
      Message: `Record Deleted`,
    });
  } else {
    PickHistory({ message: `Failed to delete gateway with id= ${id}`, function_name: 'RemoveSmsGateway', date_started: systemDate,  event: "Delete sms gateway",logtype:0 }, req)

   return  res.status(500).json({ Status: 0, Message: "Error Removing Record" });
  }
});
