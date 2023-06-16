const asynHandler = require("../../middleware/async");
const Model = require("../../model/Settings/PathModel");
const EmailModel = require("../../model/Settings/EmailSettings");
const { pdfUrl, imgUrl } = require("../../helper/vars")
const { ConvertApi } = require("../../helper/apiCall")
const { readFile, SendMail, SendSms } = require("../../helper/func");
const { PickHistory } = require("../../helper/utilfunc");
const systemDate = new Date().toISOString().slice(0, 19).replace("T", " ");

exports.ConvertServices = asynHandler(async (req, res, next) => {
  const { swift, format, services, transport, subject, message, email, cc } = req.body
  //get path settings
  let dbresult = await Model.all();
  if (!dbresult) {
    PickHistory({ message: "Sorry, no directory paths has been configured", function_name: 'ConvertServices', date_started: systemDate,  event: `Convert ${swift} to ${format} file format`,logtype:0 }, req)
   return res.status(200).json({
      Status: 0,
      Data: [],
      Message: `Sorry, no paths has been configured`,
    });
  }
  let emailresult = await EmailModel.all();
  if (transport === 'mail' && !emailresult) {
    PickHistory({ message: "Sorry, no smtp has been configured", function_name: 'ConvertServices', date_started: systemDate,  event: `Convert ${swift} to ${format} file format`,logtype:0 }, req)
    return res.status(200).json({
      Status: 0,
      Data: [],
      Message: `Sorry, no smtp has been configured`,
    });
  }

  let emailenabled = await EmailModel.all();
  if (transport === 'mail' && emailenabled.enabled == 0) {
    PickHistory({ message: "Sorry, smtp is disabled or not configured properly in db", function_name: 'ConvertServices', date_started: systemDate,  event: `Convert ${swift} to ${format} file format`,logtype:0 }, req)
    return res.status(200).json({
      Status: 0,
      Data: [],
      Message: `Sorry, smtp is disabled`,
    });
  }

  let url = services === "pdf" ? pdfUrl : imgUrl
  let pdfPath = dbresult.src_swift_docs_path_pdf;
  let imgPath = dbresult.src_swift_docs_path_img;

  let payload = {
    swift,
    format,
    pdf_dir: pdfPath,
    img_dir: imgPath,
    src_dir: dbresult.src_swift_docs_path_txt
  }
  console.log(req.body);
  // let data = await ConvertApi(url,payload)
  // console.log(data);
  // res.send(data)

  switch (transport) {
    case '':

    /****************************** Modification Here **********************************************************/
             let serviceURL = 'http://localhost:9091/getdoc/' + swift + '/template01/' + services
             const axios = require('axios');
             const fs = require('fs');
             let myData; // Initialize an empty object

             //console.log(swift)
            //{ docname: 'MT103-FT23151CD2KG', fileFormat: 'any' }

             let file_name_enquiry = axios.get(serviceURL)
                      .then(response => {
                          //const data = response.data;
                          const contentDisposition = response.headers['content-disposition'];
                          const regex = /filename[^;=\n]*=((['"]).*?\2|[^;\n]*)/;
                          const matches = regex.exec(contentDisposition);
                          let filename = '';
                          let downloadpath = '';

                          if (matches != null && matches[1]) {
                            filename = matches[1].replace(/['"]/g, '');
                          }
                          const data = { docname: filename, fileFormat: services };

                          if (filename.includes('zip')) {
                            data["fileFormat"] = "zip"
                          }

                          switch(true){

                            case filename.includes('zip'):
                              console.log("goes to zip folder")
                              downloadpath = dbresult.src_swift_docs_path_zip
                              break;
                            case filename.includes('pdf'):
                              console.log("goes to pdf folder")
                              downloadpath = dbresult.src_swift_docs_path_pdf
                              break;        
                            case filename.includes('jpg'):
                               console.log("goes to img folder")
                               downloadpath = dbresult.src_swift_docs_path_img
                               break;
                            default:
                              console.log("goes to undefined folder")
                          }


                          fs.writeFileSync(downloadpath + "/" + filename , response.data);
                          console.log("Attachment Name ==> ",filename)                         
                          console.log("Recieved Data ===== ",data)
                          res.send(data)
                      })
                      .catch(error => {
                        console.error('Error retrieving data:', error);
                      });

            //console.log("File Name Detail . . . ",file_name_enquiry);

    /****************************** Modification Ends Here **********************************************************/

      //let notransport = await ConvertApi(url, payload) //9000 ,pdf convert api
      PickHistory({ message: `Message with name ${swift} has been converted successfully using ${services} services and converted to ${format} file format `, function_name: 'ConvertServices', date_started: systemDate,  event: `Convert ${swift} to ${format} file format`,logtype:0 }, req)

      //console.log("Payload=============================================",payload);
      //console.log("NoTransport=============================================",notransport);

      //res.send(notransport)
      console.log("File Name Sent . . . !")
      break;
    case 'mail':
      console.log('im here');
      
      let data = await ConvertApi(`${process.env.MailBaseUrl}/swiftalert`, {
        "MailTo": email,
        "MailFrom": "no-reply-swiftalert@calbank.net",
        "MailSubject": subject,
        "MailMessage": message,
        "Docname": swift
      })
      console.log(data);
      PickHistory({ message: `Message with name ${swift} has been converted and emailed using ${services} services and converted to ${format} file format `, function_name: 'ConvertServices', date_started: systemDate,  event: `Convert ${swift} to ${format} file format`,logtype:1 }, req)

      res.send(data)




    default:
      break;
  }



});
exports.DownloadConverters = asynHandler(async (req, res, next) => {
  const { swift, services } = req.body

  let dbresult = await Model.all();

  /** -------------------------------------  Albert -- BEGIN Modification ---------------------------- */
  //console.log(dbresult)
  console.log("SWFIT ---" + swift)
  console.log("SERVICES --- " + services)
  console.log("PATH ---" + dbresult.src_swift_docs_path_pdf)
  const fs = require('fs');
  const axios = require('axios');
  const crypto = require('crypto');

  let uniquefile = crypto.randomBytes(16).toString('hex');
  console.log("",uniquefile)
  let serviceURL = 'http://localhost:9091/getdoc/' + swift + '/template01/' + services

  

  // Send a GET request to the server
  axios.get(serviceURL, { responseType: 'arraybuffer' })
    .then(response => {
      //console.log("Response From Service ====> ", response)
      const contentDisposition = response.headers['content-disposition'];
      const regex = /filename[^;=\n]*=((['"]).*?\2|[^;\n]*)/;
      const matches = regex.exec(contentDisposition);
      let filename = '';

      if (matches != null && matches[1]) {
        filename = matches[1].replace(/['"]/g, '');
      }

      let downloadpath = ""
  
      switch(true){

        case filename.includes('zip'):
          console.log("goes to zip folder")
          downloadpath = dbresult.src_swift_docs_path_zip
          break;
        case filename.includes('pdf'):
          console.log("goes to pdf folder")
          downloadpath = dbresult.src_swift_docs_path_pdf
          break;        
        case filename.includes('jpg'):
           console.log("goes to img folder")
           downloadpath = dbresult.src_swift_docs_path_img
           break;
        default:
          console.log("goes to undefined folder")
      }

      console.log("Attachment ==> ",filename)
      console.log("Download Path ==> ", downloadpath)

      // Write the PDF data to a file
      fs.writeFileSync(downloadpath + "/" + filename , response.data);
      PickHistory({ message: `File -${swift} downloaded`, function_name: 'DownloadConverters', date_started: systemDate,  event: "Download file",logtype:1 }, req)
      res.download(downloadpath + "/" + filename)
    })
    .catch(error => {
      PickHistory({ message: `Failed to download file  -${swift}`, function_name: 'DownloadConverters', date_started: systemDate,  event: "Download file",logtype:0 }, req)
      console.error(error);
    });
  /** -------------------------------------  Albert -- END Modification ---------------------------- */
  //get path settings
  //let dbresult = await Model.all();
  /**   COMMENTED OUT BY ALBERT
  if (!dbresult) {
    return res.status(200).json({
      Status: 0,
      Data: [],
      Message: `Sorry, no paths has been configured`,
    });
  }
 
  let url = services === "pdf"? dbresult.src_swift_docs_path_pdf :dbresult.src_swift_docs_path_img
 
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
**/

});
exports.FileReadController = asynHandler(async (req, res, next) => {
  const { swift } = req.body
  if (!swift) {
    PickHistory({ message: `No id provided in the request body`, function_name: 'FileReadController', date_started: systemDate,  event: "Read file",logtype:0 }, req)
    return res.status(400).json({
      Status: 0,
      Message: `Please provide id`,
    });
  }
  //get path settings
  let dbresult = await Model.all();
  if (!dbresult) {
    PickHistory({ message: `Sorry, no folder or directory paths has been configured`, function_name: 'FileReadController', date_started: systemDate,  event: "Read file",logtype:0 }, req)
   return res.status(200).json({
      Status: 0,
      Data: [],
      Message: `Sorry, no paths has been configured`,
    });
  }
  let src_dir = dbresult.src_swift_docs_path_txt
  let read = await readFile(src_dir, swift)
  PickHistory({ message: `File with name ${swift} has been retrieved andd viewed from ${src_dir} directory`, function_name: 'FileReadController', date_started: systemDate,  event: "Read file",logtype:1 }, req)
 res.send(read)



});