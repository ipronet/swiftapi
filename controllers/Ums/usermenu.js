const asynHandler = require("../../middleware/async");
const Model = require("../../model/Ums/UserMenu");
const RoleModel = require("../../model/Ums/Roles");
const MenuModel = require("../../model/Ums/Menu");
exports.SetupUserMenu = asynHandler(async (req, res, next) => {
  let menuid = req.body.menuid;
  let userID = req.body.userID;
  let payload = req.body;
  if (!menuid && !userID) {
    return res.status(200).json({
      Status: 0,
      Message: `Please select userid and menu`,
    });
  }

  //find rolemenu
  let role = await Model.FindUserMenu(userID, menuid);

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

exports.AllUserMenu = asynHandler(async (req, res, next) => {
  console.log('this endpoint');
  let dbresult = await Model.FindUsers();
  console.log('dbresult',dbresult);
  if (dbresult.length == 0) {
    return res.status(200).json({
      Status: 0,
      Data: [],
      Message: `No record found`,
    });
  }

  let bigData = [];
  for (const iterator of dbresult) {
    console.log(iterator);
    let getrole = await RoleModel.FindRoleID(iterator?.roleid);
    console.log(getrole);
    let menus = await Model.rolemenusnodistinctshowall(iterator?.id);
    console.log(menus);
    let role = {
      userID: iterator?.id,
      username: iterator?.username,
      roleid: getrole?.id,
      roletitle: getrole?.title,
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

exports.SingleUserMenu = asynHandler(async (req, res, next) => {
  let username = req.body.username;
  let dbresult = await Model.FindUser(username);
  if (!dbresult) {
    return res.status(200).json({
      Status: 0,
      Data: [],
      Message: `No record found`,
    });
  }

 
  let getrole = await RoleModel.FindRoleID(dbresult?.roleid);
  let menus = await Model.rolemenusnodistinctshowall(dbresult?.id);
  let role = {
    userID: dbresult?.id,
    username: dbresult?.username,
    roleid: getrole?.id,
    roletitle: getrole?.title,
    menus,
  };
  res.json({
    Status: 1,
    Message: "Record Found",
    Data: role,
  });
});
exports.RemoveUserMenu = asynHandler(async (req, res, next) => {
  let id = req.body.id;

  if (!id) {
    return res.status(400).json({
      Status: 0,
      Message: `Please provide id`,
    });
  }
  const newData = {
    status: 0,
    accessType: 0,
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

exports.UpdateUserMenu = asynHandler(async (req, res, next) => {
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
