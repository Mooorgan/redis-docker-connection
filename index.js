const createClient = require('redis').createClient;
console.log('Hello');
async function main() {
  const client = await createClient({
    url: 'redis://redis-essentials-redis:6379',
  })
    .on('error', (err) => console.log('Redis Client Error', err))
    .connect();

  await client.set('key', 'value');
  const value = await client.get('key');
  console.log(value);
  await client.disconnect();
}

main().catch(console.error);
