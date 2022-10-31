const asynHandler = require("../../middleware/async");
const Model = require("../../model/Settings/PathModel");
const EmailModel = require("../../model/Settings/EmailSettings");
const {pdfUrl,imgUrl} =  require("../../helper/vars")
const {ConvertApi}  = require("../../helper/apiCall")
const {readFile,SendMail,SendSms}  = require("../../helper/func")
exports.ConvertServices = asynHandler(async (req, res, next) => {
 const  {swift,format,services,transport,subject,message,receiver,cc} = req.body
    //get path settings
    let dbresult = await Model.all();
    if (!dbresult) {
      return res.status(200).json({
        Status: 0,
        Data: [],
        Message: `Sorry, no paths has been configured`,
      });
    }
    let emailresult = await EmailModel.all();
    if (transport === 'mail' && !emailresult) {
      return res.status(200).json({
        Status: 0,
        Data: [],
        Message: `Sorry, no smtp has been configured`,
      });
    }

    let emailenabled = await EmailModel.all();
    if (transport === 'mail' && emailenabled.enabled == 0) {
      return res.status(200).json({
        Status: 0,
        Data: [],
        Message: `Sorry, smtp is disabled`,
      });
    }

    let url = services === "pdf"? pdfUrl :imgUrl
    let pdfPath = dbresult.src_swift_docs_path_pdf;
    let imgPath = dbresult.src_swift_docs_path_img;

    let payload = {
        swift,
        format,
        pdf_dir:pdfPath,
        img_dir:imgPath,
        src_dir:dbresult.src_swift_main_path
    }

    // let data = await ConvertApi(url,payload)
    // console.log(data);
    // res.send(data)

    switch (transport) {
      case '':
     let  notransport = await ConvertApi(url,payload)
      res.send(notransport)
        break;
      case 'mail':
      let data = await ConvertApi(url,payload)
      res.send(data)

      // try {
      //  let checkMail =  await  SendMail(receiver,message,"Swift",subject,cc,emailresult[0].smtpFrom,swift,url === "pdf"?pdfPath:imgPath,emailresult[0].smtpHost,emailresult[0].smtpPort)
      //  console.log('checkMail',checkMail);
      // return res.status(200).json({
      //   Status: 1,
      //     Message: `Email sent to ${receiver}`,
      //   });
      // } catch (err) {
      //   console.log(err);
    
      //   return res.send({Status:0,Message:'Cannot send email'})
      // }
    
    
    
      default:
        break;
    }



});
exports.DownloadConverters = asynHandler(async (req, res, next) => {
  const  {swift,services} = req.body
     //get path settings
     let dbresult = await Model.all();
     if (!dbresult) {
       return res.status(200).json({
         Status: 0,
         Data: [],
         Message: `Sorry, no paths has been configured`,
       });
     }
 
     let url = services === "pdf"? dbresult.src_swift_docs_path_pd :dbresult.src_swift_docs_path_img
 
     var filePath = url
     var fileName = swift
     res.download(swift, function(err) {
      if(err) {
        res.status(200).json({
          Status: 0,
          Data: [],
          Message: `Sorry, Server failed to retrieve file for download`,
        });
      }

  
  }); 
 
 
 });
 exports.FileReadController = asynHandler(async (req, res, next) => {
  const  {swift} = req.body
  if (!swift) {
    return res.status(400).json({
      Status: 0,
      Message: `Please provide id`,
    });
  }
     //get path settings
     let dbresult = await Model.all();
     if (!dbresult) {
       return res.status(200).json({
         Status: 0,
         Data: [],
         Message: `Sorry, no paths has been configured`,
       });
     }
   let  src_dir = dbresult.src_swift_main_path
   let read = await readFile(src_dir,swift)
   res.send(read)
  
 
 
 });