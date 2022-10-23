const asynHandler = require("../../middleware/async");
const Model = require("../../model/Ums/Menu");
const { crypto, randomUUID } = require("crypto");
const { list_to_tree } = require("../../helper/func");
exports.SetupMenu = asynHandler(async (req, res, next) => {
  let title = req.body.title;
  let id = req.body.id;
  let isBaseId = req.body.isBaseId;
  let url = req.body.url;
  let payload = req.body;
  if (!title || url == "") {
    return res.status(200).json({
      Status: 0,
      Message: `Please provide required fields`,
    });
  }
  if (isBaseId && !id) {
    return res.status(200).json({
      Status: 0,
      Message: `Please provide baseid`,
    });
  }
  if (isBaseId) {
    console.log(payload);
    payload.baseId = id;
    payload.originatorBaseId = req.orign || id;
  }

  payload.id = randomUUID();

  //find menu
  let menu = await Model.FindMenu(title);

  if (menu) {
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

exports.AllMenus = asynHandler(async (req, res, next) => {
  let dbresult = await Model.all();
  if (dbresult.length == 0) {
    return res.status(200).json({
      Status: 0,
      Data: [],
      Message: `No record found`,
    });
  }
  let listing = list_to_tree(dbresult);
  res.json({
    Status: 1,
    Message: "Record Found",
    Data: listing,
  });
});

exports.SingleMenu = asynHandler(async (req, res, next) => {
  let id = req.body.id;
  let dbresult = await Model.FindMenuID(id);
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
exports.RemoveMenu = asynHandler(async (req, res, next) => {
  let id = req.body.id;

  //check if id is originator id
  // if it is, count all menus with that originator id
  //if it exceeds 1, allow delete
  if (!id) {
    return res.status(400).json({
      Status: 0,
      Message: `Please provide id`,
    });
  }
  let countresult = await Model.CountOrigin(id);

  if (countresult.total > 1) {
    return res.status(400).json({
      Status: 0,
      Message: `Sorry, this menu has deep nested children`,
    });
  }

  const newData = {
    status: 0,
    deletedAt: new Date().toISOString().slice(0, 19).replace("T", " "),
  };

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

exports.UpdateMenu = asynHandler(async (req, res, next) => {
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
