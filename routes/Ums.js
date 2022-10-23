const express = require("express");
const router = express.Router();
// App SETUP
// const { Login } = require("../controllers/ums/api");
const { checkBaseId,checkOriginatorBaseId,checkUserMenuBaseId } = require("../middleware/request");
const {
  SetupRole,
  AllRoles,
  SingleRole,
  RemoveRole,
  UpdateRole,
} = require("../controllers/Ums/roles");
const { SetupMenu, AllMenus,SingleMenu,RemoveMenu,UpdateMenu } = require("../controllers/Ums/menu");
const { SetupUserMenu,AllUserMenu,SingleUserMenu,RemoveUserMenu,UpdateUserMenu } = require("../controllers/Ums/usermenu");
const { SetupRoleMenu,AllRoleMenu,SingleRoleMenu,RemoveRoleMenu,UpdateRoleMenu } = require("../controllers/Ums/rolemenu");

// router.route("/")["post"](Login);
router.route("/createrole")["post"](SetupRole);
router.route("/roles")["post"](AllRoles);
router.route("/findrole")["post"](SingleRole);
router.route("/deleterole")["post"](RemoveRole);
router.route("/updaterole")["post"](UpdateRole);

router.route("/createmenu")["post"](checkOriginatorBaseId,SetupMenu);
router.route("/menus")["post"](AllMenus);
router.route("/findmenu")["post"](SingleMenu);
router.route("/deletemenu")["post"](RemoveMenu);
router.route("/updatemenu")["post"](UpdateMenu);

router.route("/createrolemenu")["post"](checkBaseId,SetupRoleMenu);
router.route("/rolemenu")["post"](AllRoleMenu);
router.route("/findrolemenu")["post"](SingleRoleMenu);
router.route("/deleterolemenu")["post"](RemoveRoleMenu);
router.route("/updaterolemenu")["post"](UpdateRoleMenu);

router.route("/createusermenu")["post"](checkUserMenuBaseId,SetupUserMenu);
router.route("/usermenu")["post"](AllUserMenu);
router.route("/findusermenu")["post"](SingleUserMenu);
router.route("/deleteusermenu")["post"](RemoveUserMenu);
router.route("/updateusermenu")["post"](UpdateUserMenu);
module.exports = router;
