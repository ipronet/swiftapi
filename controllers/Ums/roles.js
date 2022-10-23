const asynHandler = require("../../middleware/async");
const Model = require("../../model/Ums/Roles");
const crypto = require("crypto");
exports.SetupRole = asynHandler(async (req, res, next) => {
  let title = req.body.title;
  let payload = req.body;
  if (!title) {
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
    return res.status(200).json({
      Status: 0,
      Message: `Record Already exist`,
    });
  }

  let result = await Model.create(payload);
  if (result.affectedRows === 1) {
    res.status(200).json({
      Status: 1,
      Message: `Record Created Successfully`,
    });
  } else {
    res.status(500).json({ Status: 0, Message: "Error Saving Record" });
  }
});

exports.AllRoles = asynHandler(async (req, res, next) => {
  let dbresult = await Model.allshow();
  if (dbresult.length == 0) {
    return res.status(200).json({
      Status: 0,
      Data: [],
      Message: `No record found`,
    });
  }

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
    return res.status(200).json({
      Status: 0,
      Data: [],
      Message: `No record found`,
    });
  }

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
    return res.status(400).json({
      Status: 0,
      Message: `Please provide id`,
    });
  }
  let result = await Model.update(newData, id);

  if (result.affectedRows === 1) {
    res.status(200).json({
      Status: 1,
      Message: `Record Deleted`,
    });
  } else {
    res.status(500).json({ Status: 0, Message: "Error Removing Record" });
  }
});

exports.UpdateRole = asynHandler(async (req, res, next) => {
  let id = req.body.id;
  let payload = req.body;

  payload.updatedAt = new Date().toISOString().slice(0, 19).replace("T", " ");

  if (!id) {
    return res.status(400).json({
      Status: 0,
      Message: `Please provide id`,
    });
  }
  let result = await Model.update(payload, id);

  if (result.affectedRows === 1) {
    res.status(200).json({
      Status: 1,
      Message: `Record Updated`,
    });
  } else {
    res.status(500).json({ Status: 0, Message: "Error Updating Record" });
  }
});
