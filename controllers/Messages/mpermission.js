const MODEL = require("../../model/Messages/Mpermission");
const dotenv = require("dotenv");
dotenv.config({ path: "./config/config.env" });
const asynHandler = require("../../middleware/async");
const { PickHistory } = require("../../helper/utilfunc");
const systemDate = new Date().toISOString().slice(0, 19).replace("T", " ");
exports.CreateMessagePermission = asynHandler(async (req, res, next) => {
      let {message_type, roleid} = req.body
    /**
     *
     * Now you can create permission
     * * */
    req.body.createdBy = req.headers.user

    //find existing
    let dbresult = await MODEL.MessageProtect(message_type, roleid);

    if (dbresult) {
        PickHistory({ message: "Record already exist, failed to save", function_name: 'CreateMessagePermission', date_started: systemDate, event: "Create Message Permission", logtype: 0 }, req)

        return res.status(200).json({
            Status: 0,
            Data: [],
            Message: `Record already exist, failed to save`,
        });
    }
    const results = await MODEL.CreateMpermission(req.body);
    if (results.affectedRows === 1) {
        PickHistory({ message: `New message permission created`, function_name: 'CreateMessagePermission', date_started: systemDate, event: "Create Message Permission", logtype: 1 }, req)

        return res.status(200).json({
            Status: 1,
            Message: `Permission added successfully`,
        });
    } else {
        PickHistory({ message: `Error adding new permission`, function_name: 'CreateMessagePermission', date_started: systemDate, event: "Create Message Permission", logtype: 0 }, req)
        return  res
            .status(404)
            .json({ Status: 0, Message: "Error adding new permission" });
    }


});

exports.ListMPermissions = asynHandler(async (req, res, next) => {

    let results = await MODEL.ViewMessagePermissions();
    if (results.length == 0) {
        PickHistory({ message: "Sorry, Failed To Retrieve Data", function_name: 'ListMPermissions', date_started: systemDate, event: "View Message Permissions", logtype: 0 }, req)
        return res.status(401).json({
            Status: 0,
            Message: "Sorry, Failed To Retrieve Data",
        });
    }

    res.json({
        Status: 1,
        Message: "Record Found",
        Data: results,
      });
});


exports.updateMpermission = asynHandler(async (req, res, next) => {
    let id = req.body.id;

 
    req.body.updatedAt =systemDate
    req.body.updatedBy = req.headers.user
    let result = await MODEL.UpdateMpermission(req.body, id);


 if (result.affectedRows === 1) {
        PickHistory({ message: `User with ${id} record has been updated from db`, function_name: 'updateMpermission', date_started: systemDate, event: "Update Message Permission", logtype: 1 }, req)
        return res.status(200).json({
            Status: 1,
            Message: `Record Updated`,
        });
    } else {
        PickHistory({ message: `Failed to update record from db`, function_name: 'updateMpermission', date_started: systemDate, event: "Update Message Permission", logtype: 0 }, req)
        return res.status(401).json({ Status: 0, Message: "Error Updating Record" });
    }
});

exports.ViewSingleMPermission = asynHandler(async (req, res, next) => {

    let roleid = req.body.roleid;
    let dbresult = await MODEL.ViewMessagePermissionsByRole(roleid);

    if (dbresult.length < 1) {
        PickHistory({ message: "No record found", function_name: 'ViewSingleMPermission', date_started: systemDate, event: "View Message Permission By Roleid", logtype: 0 }, req)

        return res.status(200).json({
            Status: 0,
            Data: [],
            Message: `No record found`,
        });
    }
    PickHistory({ message: `Viewed ${roleid} details`, function_name: 'ViewSingleMPermission', date_started: systemDate, event: "View Message Permission By Roleid", logtype: 1 }, req)
    res.json({
        Status: 1,
        Message: "Record Found",
        Data: dbresult,
    });
});

exports.FindPermission = asynHandler(async (req, res, next) => {

    let id = req.body.id;
    let dbresult = await MODEL.FindMessagePermission(id);

// 
    if (!dbresult) {
        PickHistory({ message: "No record found", function_name: 'ViewSingleMPermission', date_started: systemDate, event: "View Message Permission By Id", logtype: 0 }, req)

        return res.status(200).json({
            Status: 0,
            Data: [],
            Message: `No record found`,
        });
    }
    PickHistory({ message: `Viewed ${id} details`, function_name: 'ViewSingleMPermission', date_started: systemDate, event: "View Message Permission By Roleid", logtype: 1 }, req)
    res.json({
        Status: 1,
        Message: "Record Found",
        Data: dbresult,
    });
});



