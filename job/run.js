const amqplib = require('amqplib');
const { CreateMessageRecord } = require("../helper/autoActions");

async function ProcessResult(messages, ch1) {
  const qm = JSON.parse(messages.content.toString());
  let messagetype = `m${qm.mtype}`;
  let cdata = qm.cdata;
  try {
    const msgData = {
      docname: qm.docname,
      dir: qm.dir,
      sender: qm.Sender,
      reciever: qm.Receiver,
      cdatetime: qm.cdatetime,
      jsondata: JSON.stringify(qm),
      status: qm.NetStatus,
    };
    CreateMessageRecord(messagetype,msgData,ch1,messages,cdata)
    await sleep(100000); //sleep and wait
  } catch (error) {
    console.log(qm);
    ch1.ack(messages)
  }

}

async function sleep(millis) {
  return new Promise(resolve => setTimeout(resolve, millis));

}


async function runFunction() {

  //retrieve all messages from queue

  const conn = await amqplib.connect('amqp://10.65.39.163:5672');

  const ch1 = await conn.createChannel();
  const queue = 'SwiftMessages';
  await ch1.assertQueue(queue);

  // Listener
  ch1.consume(queue, async (msg) => {
    await ProcessResult(msg, ch1);  //process the result 
    await sleep(100000); //sleep and wait
  },);

}

runFunction()