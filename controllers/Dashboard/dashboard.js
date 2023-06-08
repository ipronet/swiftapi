const asynHandler = require("../../middleware/async");
const { MonitorUrl } = require("../../helper/scanners");
const {pdfUrl,imgUrl,reportUrl} =  require("../../helper/vars")
const {formatBytes} =  require("../../helper/func")
const Model = require("../../model/Messages/Mtype");
const systemDate = new Date().toISOString().slice(0, 19).replace("T", " ");

const os = require("os");
const { PickHistory } = require("../../helper/utilfunc");
const { ConvertApi } = require("../../helper/apiCall");
exports.Utility = asynHandler(async (req, res, next) => {
    
    let pdfcheck = await MonitorUrl(pdfUrl);
    let imgcheck = await MonitorUrl(imgUrl);
    let processed = await  Model.MessageTypeRecordsCount()
    let msgrecord = await Model.MessageRecordsCount()
    // let alertcount = await Model.AlertCount()
    let aborted = await Model.MessageTypeRecordsCountStatus('aborted')
    const TopDash = [
           {
            id:1,
            title:"Total Messages",
           subTitle:"processed",
            count:processed.count,
            color:'badge red lighten-1'
           },
           {
            id:2,
               title:"Total Messages",
           subTitle:"aborted",
            count:aborted.count,
            color:'badge red lighten-1'

           },
           {
            id:3,
               title:"Total Message Types",
           subTitle:"saved",
            count:msgrecord.count,
            color:'badge cyan lighten-1'

           },
           {
            id:4,
               title:"Total Alert",
           subTitle:"notifications",
            count:0,
            color:'badge green lighten-1'

           }
        
    ]

    const ServerData = {
        info:{
            // usage:"40%",
            // space:"300GB",
            // cpu:"57.4%",
            ostype: os.type(),
            freeMemory: formatBytes(os.freemem()),
            totalMemory: formatBytes(os.totalmem()),
        },
        services:[
            {
                id:1,
                title:"PDF Service",
                status:pdfcheck.message
            
            },
            {
                id:2,
                title:"Image Service",
                status:imgcheck.message
            
            },
            {
                id:3,
                title:"Email Service",
                status:"running"
            
            },
            {
                id:4,
                title:"Sms Service",
                status:"disabled"
            
            },
            {
                id:5,
                title:"API Service",
                status:"running"
            
            },
            {
                id:6,
                title:"MT Conversion Service",
                status:"running"
            
            }


        ]
    }

    const mainUtility= {
  TopDash,
  ServerData
    }
    PickHistory({ message: `Viewed dashboard data`, function_name: 'Utility', date_started: systemDate,  event: "View dashboard report utility",logtype:1 }, req)

    res.send( {
        Status: 1,
        Message: `Loading Utility`,
        Data:mainUtility
      })
});
exports.UtilityReport = asynHandler(async (req, res, next) => {
    
    let report = await ConvertApi(reportUrl)
    PickHistory({ message: `Viewed dashboard data`, function_name: 'Utility', date_started: systemDate,  event: "View dashboard report utility",logtype:1 }, req)
    res.send(report)

});