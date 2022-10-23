const express = require("express");

const router = express.Router();

const {
CreateMessage,
CreateHeaders,
SaveMessage,
GetMessages,
GetMessageRecords,
updateHeaders,
OnlyMessage
} = require("../controllers/Messages/mtype");

// validation

//routes
router.route("/newmessage").post(CreateMessage);
router.route("/savemessage").post(SaveMessage);
router.route("/getmessages").post(GetMessages);
router.route("/onlymessages").post(OnlyMessage);
router.route("/messagerecords").post(GetMessageRecords);
router.route("/newheader").post(CreateHeaders);
router.route("/updateHeaders").post(updateHeaders);


module.exports = router;
