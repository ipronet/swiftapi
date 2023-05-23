const express = require("express");

const router = express.Router();

const {
  CreateUser,
  GetAllUsers,
  updateSystemUser,
  GetRoles,
  GetStatus,
  SingleUser,
  RemoveUser
} = require("../controllers/Users/User");
const { AuthUser } = require("../controllers/Users/Authenticate");
const { GetAuthUser } = require("../controllers/Users/GetAuthUser");
const { SingOut } = require("../controllers/Users/Logout");

// validation
const {
  userSignup,
  userSignIn,
  userUpdate,
} = require("../middleware/user.schema");

//guards for fetchme
const { protect } = require("../middleware/guard");

//routes
router.route("/create").post(userSignup, CreateUser);
router.route("/auth").post(AuthUser);
router.route("/find").post(SingleUser);
router.route("/fetchme").post(GetAuthUser);
router.route("/fetchallusers").post(GetAllUsers);
router.route("/fetchroles").post(GetRoles);
router.route("/fetchstatus").post(GetStatus);
router.route("/updateuser").post(updateSystemUser);
router.route("/logout").post(SingOut);
router.route('/remove').post(RemoveUser)

module.exports = router;
