const express = require("express");

const router = express.Router();

const {
CreateMessage,
CreateHeaders,
SaveMessage,
GetMessages,
GetMessageRecords,
updateHeaders,
OnlyMessage,
LimitMessages,
GetPermittedMessageRecords
} = require("../controllers/Messages/mtype");
const {
    CreateMessagePermission,
    ListMPermissions,
    FindPermission,
    updateMpermission,
    ViewSingleMPermission
    } = require("../controllers/Messages/mpermission");
const { protectMsgView } = require("../middleware/guard");

// validation



//routes
router.route("/newmessage").post(CreateMessage);
router.route("/savemessage").post(SaveMessage);
// router.route("/getmessages").post(protectMsgView,GetMessages);
// router.route("/limitmessages").post(protectMsgView,LimitMessages);
router.route("/getmessages").post(GetMessages);
router.route("/limitmessages").post(LimitMessages);
router.route("/onlymessages").post(OnlyMessage);
router.route("/messagerecords").post(GetMessageRecords);
router.route("/newheader").post(CreateHeaders);
router.route("/updateHeaders").post(updateHeaders);

router.route("/permittedmessagerecords").post(GetPermittedMessageRecords);

router.route("/createmsgpermission").post(CreateMessagePermission);
router.route("/updatemsgpermission").post(updateMpermission);
router.route("/listmsgpermission").post(ListMPermissions);
router.route("/viewmsgpermission").post(ViewSingleMPermission);
router.route("/findmsgpermission").post(FindPermission);


module.exports = router;
