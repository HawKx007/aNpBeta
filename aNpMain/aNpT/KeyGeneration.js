const fs = require('fs');
const Web3 = require('web3');

async function generateKeys() {
  const web3 = new Web3();

  // Generate new account
  const accounts = await web3.eth.accounts.create();

  const private_key = accounts.privateKey;
  const public_key = accounts.address;

  const content = `Private Key: ${private_key}\nPublic Key: ${public_key}`;

  fs.writeFile('keys.txt', content, (err) => {
    if (err) throw err;
    console.log('Keys saved to keys.txt');
  });
}

generateKeys();


