const USERS = require("../../model/User/UserModel");
const AD = require("ad");

const LdapModel = require("../../model/Settings/LdapSettings");
const { list_to_tree,getUniqueListBy } = require("../../helper/func");
const bcyrpt = require("bcrypt");
const jwt = require("jsonwebtoken");
const {FilterMenu} = require('../../helper/auth')

const dotenv = require("dotenv");
const asynHandler = require("../../middleware/async");
const ErrorResponse = require("../../utls/errorResponse");
const { PickHistory } = require("../../helper/utilfunc");
dotenv.config({ path: "./config/config.env" });
const systemDate = new Date().toISOString().slice(0, 19).replace("T", " ");

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
      PickHistory({ message: "Sorry,No Ldap settings has been configured", function_name: 'AuthUser/FinEnabledLdap', date_started: systemDate,  event: "Authentication", user: username,logtype:0 }, req)
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
      PickHistory({ message: "Invalid Username or Password", function_name: 'AuthUser/AuthenticateEmail', date_started: systemDate,  event: "Authentication", user: username,logtype:0 }, req)

      return next(new ErrorResponse(`Invalid Username or Password`, 401));
    }
    /**
     * Check if ldap domain exist
     *
     */
    let maindomain = checkldap.ldap_domain;
    let userDomain = username.split("@").pop();
    if (userDomain !== maindomain) {
      
      PickHistory({ message: "Sorry,Domain name does not exist", function_name: 'AuthUser/FinEnabledLdap', date_started: systemDate,  event: "Authentication", user: username,logtype:0 }, req)

      return res.status(400).json({
        success: false,
        message: `Sorry,Domain name does not exist`,
      });
    }
    
    const ad = new AD({
      url: `${checkldap.ldap_url}`,
      user:username,
      pass: password,
    });
    //AUHTENTICATE USER

    let authme = await ad.user(username.split("@")[0]).authenticate(password);

    if (!authme) {
      PickHistory({ message: "Invalid Username Or Password", function_name: 'AuthUser/authenticate', date_started: systemDate,  event: "Authentication", user: username,logtype:0 }, req)
      
      return res
        .status(401)
        .json({ Status: 0, Message: "Invalid Credentials or Check Account Lock Status" });
    }else{
      let results = await USERS.AuthEmail(username);
     
      if (!results) {
        PickHistory({ message: "Invalid Username Or Password", function_name: 'AuthUser/authenticate', date_started: systemDate,  event: "Authentication", user: username,logtype:0 }, req)

        return next(new ErrorResponse(`Invalid Username or Password`, 401));
      }
      let getUserinfo = await FilterMenu(results)

      //Active Directory Function Comes here
      PickHistory({ message: "Logged in successfully", function_name: 'AuthUser/authenticate', date_started: systemDate,  event: "Authentication", user: username,logtype:1 }, req)

      res
      .status(200)
      .json({ Status: 1, Message: "Logged in successfully",Data:getUserinfo });
      //log here by dropping it in rabbit mq
    }
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
      PickHistory({ message: "Invalid Username or Password", function_name: 'AuthUser/Authenticate', date_started: systemDate,  event: "Authentication", user: username,logtype:0 }, req)
      return next(new ErrorResponse(`Invalid Username or Password`, 401));
    }

    /**
     * Check password
     */

    const isMatch = await bcyrpt.compare(password, results.password);
    if (!isMatch) {
      PickHistory({ message: "Invalid Username or Password", function_name: 'AuthUser/Authenticate', date_started: systemDate,  event: "Authentication", user: username,logtype:0 }, req)
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
      let getUserinfo = await FilterMenu(results)
      PickHistory({ message: "Logged in successfully", function_name: 'AuthUser/authenticate', date_started: systemDate,  event: "Authentication", user: username,logtype:1 }, req)

    res
    .status(200)
    .json({ Status: 1, Message: "Logged in successfully",Data:getUserinfo });

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
