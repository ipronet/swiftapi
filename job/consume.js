const amqplib = require('amqplib');


var amqp_url = process.env.CLOUDAMQP_URL || 'amqp://10.65.39.163:5672';
module.exports = {
  Consume: async (q) => {
    var conn = await amqplib.connect(amqp_url, "heartbeat=60");
    var ch = await conn.createChannel()

    await conn.createChannel();
    await ch.assertQueue(q, { durable: true });
    let qm = await ch.consume(q);

    console.log(qm);
  },
  Produce: async (msg, quename) => {


    console.log("Publishing");
    const conn = await amqplib.connect(amqp_url);
 
  
    // Sender
    const ch2 = await conn.createChannel();
    ch2.sendToQueue(quename, Buffer.from(JSON.stringify(msg)));
    console.log('Pushed to queue ',quename);
    
  },
}