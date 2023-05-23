const amqplib = require('amqplib');

(async () => {
  const conn = await amqplib.connect('amqp://10.65.39.163:5672');
  
  const ch1 = await conn.createChannel();
  const queue = 'SwiftMessages';
  await ch1.assertQueue(queue);

  // Listener
  ch1.consume(queue, (msg) => {
    console.log(msg);

    if (msg !== null) {
      console.log('Recieved:', msg.content.toString());
      const qm = JSON.parse(msg.content.toString());
      console.log(qm);
      // ch1.ack(msg);
    } else {
      console.log('Consumer cancelled by server');
    }
  },);

})();
