const jwt = require("jsonwebtoken");
const dotenv = require("dotenv");
const USERS = require("../model/User/UserModel");
const MESSAGE_PERMISSION = require("../model/Messages/Mpermission");
const asynHandler = require("../middleware/async");
const ErrorResponse = require("../utls/errorResponse");

dotenv.config({ path: "./config/config.env" });

// exports.protect = asynHandler(async (req, res, next) => {
//   let token;
//   if (
//     req.headers.authorization &&
//     req.headers.authorization.startsWith("Bearer")
//   ) {
//     token = req.headers.authorization.split(" ")[1];
//   } else if (req.cookies.sauth) {
//     token = req.cookies.sauth;
//   }

//   //make sure token exists
//   if (!token) {
//     return next(new ErrorResponse("Not authorized to access this route.", 401));
//   }

//   try {
//     //Verify token
//     const decoded = jwt.verify(token, process.env.jwtPrivateKey);
//     req.user = await USERS.GetUser(decoded.sub);
//     console.log(req.user);

//     next();
//   } catch (err) {
//     return next(new ErrorResponse("Not authorized to access this route.", 401));
//   }
// });

// exports.authorisRole = (...role) => {
//   return (req, res, next) => {
//     if (!role.includes(req.user.role)) {
//       return next(
//         new ErrorResponse("Role not authorised to access this route", 401)
//       );
//     }
//     next();
//   };
// };

// exports.authToken = function (req, res, next) {
//   //Get token from the header

//   const token = req.header("x-auth-token");

//   //Check if not token
//   if (!token) {
//     return res
//       .status(401)
//       .json({ Status: 0, Message: "No Token Authorisation Denied" });
//   }

//   try {
//     const decoded = jwt.verify(token, process.env.jwtPrivateKey);
//     req.token = decoded.id;
//     req.tokstate = decoded.state;
//     console.log(decoded.state);
//     if (!decoded.state) {
//       return res
//         .status(401)
//         .json({ Status: 0, Message: "Please Activate Token" });
//     }
  
//     next();
//   } catch (err) {
//     res.status(401).json({ Status: 0, Message: "Token is not valid" });
//   }
// };

exports.protectMsgView = asynHandler(async (req, res, next) => {
  let roleid = req.headers?.roleid;
  let {messagetype} = req.body;
  //make sure roleid exists
  if (!roleid) {
    PickHistory({ message: "Not authorized to access this route.MISSING ROLE FIELD", function_name: 'protectMsgView', date_started: systemDate,  event: "Mpermission-Middleware",logtype:0 }, req)
    return next(new ErrorResponse("Not authorized to access this route.", 401));
  }

  try {
    //Verify roleid
    
  let  checkpermission = await MESSAGE_PERMISSION.MessageProtect(messagetype,roleid);
    //does record exist?
    if (!checkpermission) {
      PickHistory({ message: "Not authorized to access this route.NO RECORD FOUND", function_name: 'protectMsgView', date_started: systemDate,  event: "Mpermission-Middleware",logtype:0 }, req)
      return next(new ErrorResponse("Not authorized to access this route.-NO RECORD", 401));
    }
    //is the status 0  ---deny

    if (checkpermission && checkpermission.status !== 1) {
      PickHistory({ message: "Not authorized to access this route.PERMISSION NOT ENABLED", function_name: 'protectMsgView', date_started: systemDate,  event: "Mpermission-Middleware",logtype:0 }, req)
      return next(new ErrorResponse("Not authorized to access this route.-STATUS IS 0", 401));
    }
    //if active and record exist allow
    console.log(checkpermission);

    next();
  } catch (err) {
    return next(new ErrorResponse("Not authorized to access this route.", 401));
  }
});
exports.protectMsgConvertAccess = asynHandler(async (req, res, next) => {

  let roleid = req.headers?.roleid;
  let {messagetype,services,transport} = req.body;
  console.log(req.body);
  //make sure roleid exists
  if (!roleid) {
    
    return next(new ErrorResponse("Not authorized to access this route.-BODY", 401));
  }

  try {
    //Verify roleid
    
  let  checkpermission = await MESSAGE_PERMISSION.MessageProtect(messagetype,roleid);
    //does record exist?
    if (!checkpermission) {
      return next(new ErrorResponse("Not authorized to access this route.-NO RECORD", 401));
    }
    //is the status 0  ---deny

    if (checkpermission && checkpermission.status !== 1) {
      return next(new ErrorResponse("Not authorized to access this route.-STATUS IS 0", 401));
    }
    //if active and record exist allow
    if (checkpermission && services == 'pdf' && checkpermission.pdf_access !== 1) {
      return next(new ErrorResponse("Not authorized to access or download.-PDF NOT ASSIGNED", 401));
    }
    if (checkpermission && services == 'img' && checkpermission.image_access !== 1) {
      return next(new ErrorResponse("Not authorized to access or download.-Image NOT ASSIGNED", 401));
    }

    if (checkpermission && transport == 'mail' && checkpermission.email_access !== 1) {
      return next(new ErrorResponse("Not authorized to access this route.-EMAIL NOT ASSIGNED", 401));
    }

    next();
  } catch (err) {
    return next(new ErrorResponse("Not authorized to access this route.", 401));
  }
});
exports.protectMsgReadAccess = asynHandler(async (req, res, next) => {
  let roleid = req.headers?.roleid;
  let {messagetype} = req.body;
  //make sure roleid exists
  if (!roleid) {
    
    return next(new ErrorResponse("Not authorized to access this route.-BODY", 401));
  }

  try {
    //Verify roleid
    
  let  checkpermission = await MESSAGE_PERMISSION.MessageProtect(messagetype,roleid);
    //does record exist?
    if (!checkpermission) {
      return next(new ErrorResponse("Not authorized to access this route.-NO RECORD", 401));
    }
    //is the status 0  ---deny

    if (checkpermission && checkpermission.status !== 1) {
      return next(new ErrorResponse("Not authorized to access this route.-STATUS IS 0", 401));
    }
    //if active and record exist allow
    if (checkpermission && checkpermission.detail_access !== 1) {
      return next(new ErrorResponse("Not authorized to access this route.-DETAIL VIEW NOT ASSIGNED", 401));
    }

    next();
  } catch (err) {
    return next(new ErrorResponse("Not authorized to access this route.", 401));
  }
});
exports.protectMsgDownloadAccess = asynHandler(async (req, res, next) => {
 
  let roleid = req.headers?.roleid;
  let {messagetype} = req.body;
  //make sure roleid exists
  
  if (!roleid) {
    
    return next(new ErrorResponse("Not authorized to access download.-BODY", 401));
  }

  try {
    //Verify roleid
    
  let  checkpermission = await MESSAGE_PERMISSION.MessageProtect(messagetype,roleid);
  console.log(checkpermission);
    //does record exist?
    if (!checkpermission) {
      return next(new ErrorResponse("Not authorized to access this route.-NO RECORD", 401));
    }
    //is the status 0  ---deny

    if (checkpermission && checkpermission.status !== 1) {
      return next(new ErrorResponse("Not authorized to access this route.-STATUS IS 0", 401));
    }
    //if active and record exist allow
    if (checkpermission && checkpermission.download_access !== 1) {
      return next(new ErrorResponse("Not authorized to access this route.-DOWNLOAD NOT ASSIGNED", 401));
    }

    next();
  } catch (err) {
    return next(new ErrorResponse("Not authorized to access this route.", 401));
  }
});