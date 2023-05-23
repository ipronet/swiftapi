const asynHandler = require("../../middleware/async");
const Model = require("../../model/Ums/RoleMenu");
const RoleModel = require("../../model/Ums/Roles");
const MenuModel = require("../../model/Ums/Menu");
exports.SetupRoleMenu = asynHandler(async (req, res, next) => {
  let menuid = req.body.menuid;
  let roleid = req.body.roleid;
  let payload = req.body;
  if (!menuid && !roleid) {
    return res.status(200).json({
      Status: 0,
      Message: `Please select role and menu`,
    });
  }

  //find rolemenu
  let role = await Model.FindRoleMenu(roleid, menuid);


  if (role && role.deletedAt === null) {
    return res.status(200).json({
      Status: 0,
      Message: `Record Already exist`,
    });
  }

  //  if deleted just update the rolemenu
  if (role && role.deletedAt !== null) {
    payload.updatedAt = new Date().toISOString().slice(0, 19).replace("T", " ");
    payload.deletedAt = null
    payload.status = 1
    let result = await Model.update(payload, role.id);
   if (result.affectedRows === 1) {
      res.status(200).json({
        Status: 1,
        Message: `Record Created`,
      });
    } else {
      res.status(500).json({ Status: 0, Message: "Error Creating Record" });
    }
  }else{
    //  if the record does not exist , create new one
    let result = await Model.create(payload);
    if (result.affectedRows === 1) {
        res.status(200).json({
        Status: 1,
        Message: `Record Created Successfully`,
      });
    } else {
      res.status(500).json({ Status: 0, Message: "Error Saving Record" });
    }
  }

 


});

exports.AllRoleMenu = asynHandler(async (req, res, next) => {

  let dbresult = await Model.allshow();
  console.log(dbresult);
  if (dbresult.length == 0) {
    return res.status(200).json({
      Status: 0,
      Data: [],
      Message: `No record found`,
    });
  }

  let bigData = [];
  for (const iterator of dbresult) {
    let getrole = await RoleModel.FindRoleID(iterator.roleid);
    let menus = await Model.rolemenusnodistinctshowall(iterator.roleid);
    let role = {
      id: getrole.id,
      title: getrole.title,
      menus,
    };
    bigData.push(role);
  }

  res.json({
    Status: 1,
    Message: "Record Found",
    Data: bigData,
  });
});

exports.SingleRoleMenu = asynHandler(async (req, res, next) => {
  let id = req.body.id;
  let dbresult = await RoleModel.FindRoleID(id);
  if (!dbresult) {
    return res.status(200).json({
      Status: 0,
      Data: [],
      Message: `No record found`,
    });
  }

  let menus = await Model.rolemenusnodistinctshowall(id);
  let role = {
    id: dbresult.id,
    title: dbresult.title,
    menus,
  };
  res.json({
    Status: 1,
    Message: "Record Found",
    Data: role,
  });
});
exports.RemoveRoleMenu = asynHandler(async (req, res, next) => {
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

exports.UpdateRoleMenu = asynHandler(async (req, res, next) => {
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
