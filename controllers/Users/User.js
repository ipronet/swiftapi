const USERS = require("../../model/User/UserModel");
const bcyrpt = require("bcrypt");
const jwt = require("jsonwebtoken");
const dotenv = require("dotenv");
dotenv.config({ path: "./config/config.env" });
var suid = require("rand-token").suid;
var unix = Math.round(+new Date() / 1000);
const asynHandler = require("../../middleware/async");
const { PickHistory } = require("../../helper/utilfunc");
const systemDate = new Date().toISOString().slice(0, 19).replace("T", " ");
exports.CreateUser = asynHandler(async (req, res, next) => {
  const { fullname, phone, email, password, username, roleid } = req.body;
  const uuid = suid(16);
  const finaluuid = uuid + unix;

  try {
    /**
     ** Check Duplicate Email
     **/
    const newUser = {
      fullname,
      phone,
      email,
      password,
      username,
      uid: finaluuid,
      roleid,
      status: 1,
      authtype: 4,
    };
    let results = await USERS.FindEmail(email);
    if (results) {
      return res.status(400).json({
        success: false,
        message: `Email Already exist`,
      });
    }

    /**
     ** Check Duplicate Username
     **/

    let resultT = await USERS.FindUsername(username);
    if (resultT) {
      return res.status(400).json({
        success: false,
        message: `Username  Already exist`,
      });
    }

    let checkPhone = await USERS.FindPhone(phone);
    if (checkPhone) {
      return res.status(400).json({
        success: false,
        message: `Phone Number Already exist`,
      });
    }

    user = req.body;

    /**
     ** Encrypt Password
     **/

    const salt = await bcyrpt.genSalt(10);
    newUser.password = await bcyrpt.hash(password, salt);

    /**
     *
     * Now you can create users
     * * */
    const users = await USERS.SetupUser(newUser);
    if (users.affectedRows === 1) {
      return res.status(200).json({
        success: true,
        message: `User Created Successfully`,
      });
    } else {
      res
        .status(404)
        .json({ success: false, message: "Error Setting Up User" });
    }
  } catch (error) {
    console.log(error.message);
    res.status(500).send("Server Error");
  }
});

exports.GetAllUsers = asynHandler(async (req, res, next) => {
 
  let results = await USERS.all();
  if (results.length == 0) {
    PickHistory({ message: "Sorry, Failed To Retrieve Data", function_name: 'GetAllUsers/all', date_started: systemDate,  event: "View Users",logtype:0 }, req)
   return res.status(401).json({
      success: false,
      message: "Sorry, Failed To Retrieve Data",
    });
  }
  PickHistory({ message: `Viewed ${results.length} user's`, function_name: 'GetAllUsers/all', date_started: systemDate,  event: "View Users",logtype:1 }, req)

  res.json(results);
});

exports.GetRoles = asynHandler(async (req, res, next) => {
  let results = await USERS.ViewRoles();
  if (results.length == 0) {
    PickHistory({ message: "Sorry, Failed To Retrieve Data", function_name: 'GetRoles/ViewRoles', date_started: systemDate,  event: "View Roles",logtype:0 }, req)
    return res.status(401).json({
      success: false,
      message: "Sorry, Failed To Retrieve Data",
    });
  }
  PickHistory({ message: `Viewed ${results.length} roles`, function_name: 'GetRoles/ViewRoles', date_started: systemDate,  event: "View Roles",logtype:1 }, req)
  res.json(results);
});

exports.GetStatus = asynHandler(async (req, res, next) => {
  let results = await USERS.ViewStatus();
  if (results.length == 0) {
    return res.status(401).json({
      success: false,
      message: "Sorry, Failed To Retrieve Data",
    });
  }

  res.json(results);
});
exports.updateSystemUser = asynHandler(async (req, res, next) => {
  let id = req.body.id;
  /**
 ** Encrypt Password
 **/

  if (req.body.password && req.body.password !== "") {
    const salt = await bcyrpt.genSalt(10);
    req.body.password = await bcyrpt.hash(req.body.password, salt);
  }
  req.body.updatedAt = new Date().toISOString().slice(0, 19).replace("T", " ")
  let result = await USERS.UpdateUser(req.body, id);



  if (result.affectedRows === 1) {
    PickHistory({ message: `User with ${id} record has been updated from db`, function_name: 'updateSystemUser', date_started: systemDate,  event: "Update User",logtype:1 }, req)
    return  res.status(200).json({
      success: true,
      message: `Record Updated`,
    });
  } else {
    PickHistory({ message: `Failed to update record from db`, function_name: 'updateSystemUser', date_started: systemDate,  event: "Update User",logtype:0 }, req)
    return res.status(401).json({ success: false, message: "Error Updating Record" });
  }
});

exports.SingleUser = asynHandler(async (req, res, next) => {

  let email = req.body.email;
  let dbresult = await USERS.SingleUser(email);

  if (dbresult.length < 1) {
    PickHistory({ message: "No record found", function_name: 'SingleUser', date_started: systemDate,  event: "View User",logtype:0 }, req)

    return res.status(200).json({
      Status: 0,
      Data: [],
      Message: `No record found`,
    });
  }
  PickHistory({ message: `Viewed ${email} details`, function_name: 'SingleUser', date_started: systemDate,  event: "View User",logtype:1 }, req)

  res.json({
    Status: 1,
    Message: "Record Found",
    Data: dbresult,
  });
});

exports.RemoveUser = asynHandler(async (req, res, next) => {
  let id = req.body.id;


  const newData = {
    status: 0,
    deletedAt: new Date().toISOString().slice(0, 19).replace("T", " "),

  };
  if (!id) {
    PickHistory({ message: `No id provided in the request body`, function_name: 'RemoveUser', date_started: systemDate,  event: "Delete User",logtype:0 }, req)
   return res.status(400).json({
      Status: 0,
      Message: `Please provide an id`,
    });
  }
  let result = await USERS.UpdateUser(newData, id);



  if (result.affectedRows === 1) {
    PickHistory({ message: `User with ${id} record has been deleted from db`, function_name: 'RemoveUser', date_started: systemDate,  event: "Delete User",logtype:1 }, req)
    return res.status(200).json({
      Status: 1,
      Message: `Record Deleted`,
    });
  } else {
    PickHistory({ message: `Failed to delete record from db`, function_name: 'RemoveUser', date_started: systemDate,  event: "Delete User",logtype:0 }, req)
   return res.status(500).json({ Status: 0, Message: "Error Removing Record" });
  }
});
