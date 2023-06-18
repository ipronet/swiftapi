const uuidV4 = require('uuid');
const bcyrpt = require("bcrypt");
const { generateApiKey } = require('generate-api-key');
const Swift = require("../../model/Settings/AppAuth");
const asynHandler = require("../../middleware/async");

exports.GetApp = asynHandler(async (req, res, next) => {
    let results = await Swift.GetAppAuth();
    if (results.length == 0) {
        return res.status(200).json({
            Status: 0,
            Message: "Sorry, Failed To Retrieve Data",
            Data: []
        });
    }
    res.json({
        Status: 1,
        Message: "Record Found",
        Data: results,
    });
});



exports.updateApp = asynHandler(async (req, res, next) => {

    let id = req.body.id;
    if (!id) {
        return res.status(400).json({
            Status: 0,
            Message: `Please provide id`,
        });
    }
    const newData = {
        app_name: req.body.app_name,
        app_status: req.body.app_status,
        allowed_ips: req.body.allowed_ips,
        created_by: req?.headers?.user,
        updated_at: new Date().toISOString().slice(0, 19).replace("T", " "),
    }
    
    let result = await Swift.updateAppAuth(newData, id);

    if (result.affectedRows === 1) {
       return res.status(200).json({
            Status: 1,
            Message: `Record Updated`,
        });
    } else {
       return res.status(401).json({ Status: 0, Message: "Error Updating Record" });
    }
});


exports.CreateApp = asynHandler(async (req, res, next) => {
    let id = uuidV4.v4();
    let generatekey = generateApiKey({
        method: 'uuidv5',
        name: req.body.app_name,
        namespace: '0f3819f3-b417-4c4c-b674-853473800265',
        prefix: 'swift_app'
    }); // ⇨ 'prod_app.3f7e5d98-3aa9-5dcb-82e3-10d9a2fc412a'
    payload = req.body
    payload.app_key = id
    const salt = await bcyrpt.genSalt(10);
    console.log('generating api key...', generatekey);
    payload.app_secret = await bcyrpt.hash(generatekey, salt);
    let results = await Swift.createAppAuth(payload);

    if (results.affectedRows === 1) {
        // CatchHistory({ api_response: `New app created`, function_name: 'CreateApp', date_started: systemDate, sql_action: "INSERT", event: "App Setup", actor: requesterid }, req)
        return res.json({
            Status: 1,
            Message: "Record Found",
            Data: { app_key: id, app_secret: generatekey },
        });
    } else {
        // CatchHistory({ api_response: `Sorry, error saving record for app`, function_name: 'CreateApp', date_started: systemDate, sql_action: "INSERT", event: "User Signup", actor: requesterid }, req)
        return res.json({
            Status: 0,
            Message: "Sorry, error saving record",
            Data: {},
        });
    }

})

