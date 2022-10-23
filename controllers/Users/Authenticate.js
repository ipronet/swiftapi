const USERS = require("../../model/User/UserModel");
const LdapModel = require("../../model/Settings/LdapSettings");
const { list_to_tree,getUniqueListBy } = require("../../helper/func");
const bcyrpt = require("bcrypt");
const jwt = require("jsonwebtoken");
const dotenv = require("dotenv");
const asynHandler = require("../../middleware/async");
const ErrorResponse = require("../../utls/errorResponse");
dotenv.config({ path: "./config/config.env" });
exports.AuthUser = asynHandler(async (req, res, next) => {
  const { username, password } = req.body;
  let mailformat =
    /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
  if (mailformat.test(username)) {
    /**
     * Check if username is email address
     * proceed to check if ldap settings are available
     */
    console.log("match");
    let checkldap = await LdapModel.FinEnabledLdap();
    if (!checkldap) {
      return res.status(400).json({
        success: false,
        message: `Sorry,No Ldap settings has been configured`,
      });
    }
    /**
     * Check if email exist
     *
     */

    let verifyEmailInSystem = await USERS.AuthenticateEmail(username);

    if (!verifyEmailInSystem) {
      return next(new ErrorResponse(`Invalid Username or Password`, 401));
    }
    /**
     * Check if ldap domain exist
     *
     */
    let maindomain = checkldap.ldap_domain;
    let userDomain = username.split("@").pop();
    if (userDomain !== maindomain) {
      return res.status(400).json({
        success: false,
        message: `Sorry,Domain name does not exist`,
      });
    }
    //Active Directory Function Comes here
    res.send("Welcome Ldap User...");
  } else {
    /**
     * Local authentication
     */
    console.log("not match");

    /**
     * Check username
     */

    let results = await USERS.Authenticate(username);

    if (!results) {
      return next(new ErrorResponse(`Invalid Username or Password`, 401));
    }

    /**
     * Check password
     */

    const isMatch = await bcyrpt.compare(password, results.password);
    if (!isMatch) {
      return next(new ErrorResponse(`Invalid Username or Password`, 401));
    }
    delete results.password

    /**
     *---->get token details from db
     ***create Token payload
     */
    // dbtoken
    // let dbtoken = await USERS.Token();
    // let issuer = dbtoken.issuer;
    // let audience = dbtoken.audience;
    // let timetolive = dbtoken.timetolive;
    // let token_name = dbtoken.token_name;

      //Get User role

  let roleResult = await USERS.FindRole(results.roleid);
  if (!roleResult) {
    return res.status(200).json({
      Status: 0,
      Data: [],
      Message: `Sorry, No Role has been assigned to this account`,
    });
  }

  //Get Role Menu List

  let roleMenuList = await USERS.FindRoleMenu(results.roleid);
  if (!roleMenuList) {
    return res.status(200).json({
      Status: 0,
      Data: [],
      Message: `Sorry, No Menus has been assigned to your role`,
    });
  }

  //Get User Menu

  let deniedResult = await USERS.FindUserMenu(results.id, 0);
  let allowedResult = await USERS.FindUserMenu(results.id, 1);

  let packMenu = [];

  for (const iterator of roleMenuList) {
    let newRoleMenu = {
      menu: iterator.menuid,
    };

    packMenu.push(newRoleMenu);
  }

  packMenu = packMenu.filter(
    (ar) => !deniedResult.find((rm) => rm.menu === ar.menu)
  );
  packMenu.push(...allowedResult);

  let NavItem = [];

let parser = JSON.stringify(packMenu)
let newparser = JSON.parse(parser)

//remove duplicates
const noDuplicates = getUniqueListBy(newparser, 'menu')
  for (const iterator of noDuplicates) {


    let menus = await USERS.FindMenu(iterator.menu);
    NavItem.push(menus);
  }
   let listing = list_to_tree(NavItem);

   let userData = {
    userInfo :results,
    menus : listing
   }

    res
    .status(200)
    .json({ Status: 1, Message: "Logged in successfully",Data:userData });

    // sendTokenResponse(
    //   username,
    //   200,
    //   issuer,
    //   audience,
    //   timetolive,
    //   token_name,
    //   res
    // );
  }
});

// const sendTokenResponse = (
//   username,
//   statusCode,
//   issuer,
//   audience,
//   timetolive,
//   token_name,
//   res
// ) => {
//   const payload = {
//     sub: username,
//     iss: issuer,
//     aud: audience,
//   };
//   const token = jwt.sign(payload, process.env.jwtPrivateKey, {
//     expiresIn: timetolive,
//   });

//   const options = {
//     maxAge: 60 * 60 * 1000,
//     httpOnly: true,
//   };

//   if (process.env.NODE_ENV === "production") {
//     options.secure = true;
//   }
//   res
//     .status(statusCode)
//     .cookie(token_name, token, options)
//     .json({ success: true, message: "Logged in successfully" });
// };
