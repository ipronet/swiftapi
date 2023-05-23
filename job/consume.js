const amqplib = require('amqplib');


var amqp_url = process.env.CLOUDAMQP_URL || 'amqp://10.65.39.163:5672';
module.exports = {
    Consume: async () => {
    var conn = await amqplib.connect(amqp_url, "heartbeat=60");
    var ch = await conn.createChannel()
    var q = 'SwiftMessages';
    await conn.createChannel();
    await ch.assertQueue(q, {durable: true});
  let qm =   await ch.consume(q);

  console.log(qm);
    }

}