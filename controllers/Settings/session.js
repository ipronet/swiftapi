const Swift = require("../../model/Settings/Session");
const asynHandler = require("../../middleware/async");


exports.GetSystemSession = asynHandler(async (req, res, next) => {
  let results = await Swift.GetSessionSettings();
  if (results.length == 0) {
    return res.status(200).json({
      success: false,
      message: "Sorry, Failed To Retrieve Data",
      Data: []
    });
  }
  res.json({
    Status: 1,
    Message: "Record Found",
    Data: results,
  });
});



exports.updateSystemSession = asynHandler(async (req, res, next) => {
  
  let id = req.body.id;
  if (!id) {
    return res.status(400).json({
      Status: 0,
      Message: `Please provide id`,
    });
  }
  const newData = {
    expiresIn : req.body.expiresIn ,
      updatedAt: new Date().toISOString().slice(0, 19).replace("T", " "),
  }
  let result = await Swift.update(newData, id);

  if (result.affectedRows === 1) {
    res.status(200).json({
      success: true,
      message: `Record Updated`,
    });
  } else {
    res.status(401).json({ success: false, message: "Error Updating Record" });
  }
});


