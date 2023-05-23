const asynHandler = require("../../middleware/async");
const Model = require("../../model/Ums/Roles");
const crypto = require("crypto");
const { PickHistory } = require("../../helper/utilfunc");
const systemDate = new Date().toISOString().slice(0, 19).replace("T", " ");

exports.SetupRole = asynHandler(async (req, res, next) => {
  let title = req.body.title;
  let payload = req.body;
  if (!title) {
    PickHistory({ message: `No role title found in request`, function_name: 'SetupRole', date_started: systemDate,  event: "Create role",logtype:0 }, req)
    return res.status(200).json({
      Status: 0,
      Message: `Please enter title for role`,
    });
  }
  let id = crypto.createHash("md5").update(title).digest("hex");

  payload.id = id;

  //find client
  let role = await Model.FindRole(title);

  if (role) {
    PickHistory({ message: `Role ${title} already exist`, function_name: 'SetupRole', date_started: systemDate,  event: "Create role",logtype:0 }, req)
    return res.status(200).json({
      Status: 0,
      Message: `Record Already exist`,
    });
  }

  let result = await Model.create(payload);
  if (result.affectedRows === 1) {
    PickHistory({ message: `New role with title ${title} saved in db`, function_name: 'SetupRole', date_started: systemDate,  event: "Create role",logtype:1 }, req)
   return res.status(200).json({
       Status: 1,
      Message: `Record Created Successfully`,
    });
  } else {
    PickHistory({ message: `Failed to save new role record to db`, function_name: 'SetupRole', date_started: systemDate,  event: "Create role",logtype:0 }, req)
    return res.status(500).json({ Status: 0, Message: "Error Saving Record" });
  }
});

exports.AllRoles = asynHandler(async (req, res, next) => {
  let dbresult = await Model.allshow();
  if (dbresult.length == 0) {
    PickHistory({ message: `No record found in role table`, function_name: 'AllRoles', date_started: systemDate,  event: "View roles",logtype:0 }, req)
    return res.status(200).json({
      Status: 0,
      Data: [],
      Message: `No record found`,
    });
  }
  PickHistory({ message: `Viewed ${dbresult.length} role records`, function_name: 'AllRoles', date_started: systemDate,  event: "View roles",logtype:1 }, req)
  res.json({
    Status: 1,
    Message: "Record Found",
    Data: dbresult,
  });
});

exports.SingleRole = asynHandler(async (req, res, next) => {
  let id = req.body.id;
  let dbresult = await Model.FindRoleID(id);
  if (!dbresult) {
    PickHistory({ message: `No record found in role table`, function_name: 'SingleRole', date_started: systemDate,  event: "View role",logtype:0 }, req)

    return res.status(200).json({
      Status: 0,
      Data: [],
      Message: `No record found`,
    });
  }
  PickHistory({ message: `Record found for roleid  ${id}`, function_name: 'SingleRole', date_started: systemDate,  event: "View role",logtype:1 }, req)

  res.json({
    Status: 1,
    Message: "Record Found",
    Data: dbresult,
  });
});
exports.RemoveRole = asynHandler(async (req, res, next) => {
  let id = req.body.id;

  const newData = {
    status: 0,
    deletedAt: new Date().toISOString().slice(0, 19).replace("T", " "),
  };
  if (!id) {
  PickHistory({ message: `No id provided in the request body`, function_name: 'RemoveRole', date_started: systemDate,  event: "Delete role",logtype:0 }, req)
  return res.status(400).json({
      Status: 0,
      Message: `Please provide id`,
    });
  }
  let result = await Model.update(newData, id);

  if (result.affectedRows === 1) {
    PickHistory({ message: `Role with ${id} record has been deleted from db`, function_name: 'RemoveRole', date_started: systemDate,  event: "Delete role",logtype:1 }, req)
    return  res.status(200).json({
      Status: 1,
      Message: `Record Deleted`,
    });
  } else {
    PickHistory({ message: `Failed to delete role record with id ${id} from db`, function_name: 'RemoveRole', date_started: systemDate,  event: "Delete role",logtype:0 }, req)
    return res.status(500).json({ Status: 0, Message: "Error Removing Record" });
  }
});

exports.UpdateRole = asynHandler(async (req, res, next) => {
  let id = req.body.id;
  let payload = req.body;

  payload.updatedAt = new Date().toISOString().slice(0, 19).replace("T", " ");

  if (!id) {
    PickHistory({ message: `No id provided in the request body`, function_name: 'UpdateRole', date_started: systemDate,  event: "Update role",logtype:0 }, req)
   return res.status(400).json({
      Status: 0,
      Message: `Please provide id`,
    });
  }
  let result = await Model.update(payload, id);

  if (result.affectedRows === 1) {
    PickHistory({ message: `Role with id ${id} has been updated in db`, function_name: 'UpdateRole', date_started: systemDate,  event: "Update role",logtype:1 }, req)
    return res.status(200).json({
      Status: 1,
      Message: `Record Updated`,
    });
  } else {
    PickHistory({ message: `Failed to update role with id ${id}`, function_name: 'UpdateRole', date_started: systemDate,  event: "Update role",logtype:0 }, req)
    return  res.status(500).json({ Status: 0, Message: "Error Updating Record" });
  }
});
