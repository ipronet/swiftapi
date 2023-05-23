const { AutoSaveMessageRecordInfo } = require("./autoSave");

const MessageModel = require("../model/Messages/MtypeCron");


module.exports = {

    CreateMessageRecord: async (messagetype, msgData, ch1, msg,cdata) => {
        let getmsgType = await MessageModel.MessageTypeRecords(messagetype);
        if (!getmsgType) {
            let createTable = await MessageModel.CreateMessage(messagetype);
            if (createTable.results) {
                let dbresult = await MessageModel.DynamicMsg(messagetype, msgData);
                msgData.messagetype = messagetype
                msgData.ref_20 = cdata.F20_1
                msgData.ref_21 = cdata.F21_1
                msgData.jsondata= msgData?.qm,
                AutoSaveMessageRecordInfo(msgData)
                if (dbresult.affectedRows) {
                    ch1.ack(msg)
                    console.log('saving messages');

                    console.log({
                        Status: 1,
                        Message: `message saved Successfully`,
                    });
                }
            }

        } else {
            console.log('i  found  record for', messagetype);
            let dbresult = await MessageModel.DynamicMsg(messagetype, msgData);
            msgData.messagetype = messagetype
            msgData.ref_20 = cdata.F20_1
            msgData.ref_21 = cdata.F21_1
            msgData.jsondata= msgData?.qm,
            AutoSaveMessageRecordInfo(msgData)
            if (dbresult.affectedRows) {
                ch1.ack(msg)
                console.log({
                    Status: 1,
                    Message: `message saved Successfully`,
                });
            } else {
                console.log({
                    Status: 0,
                    Message: "Error Saving message",
                });
            }
        }
    }
}