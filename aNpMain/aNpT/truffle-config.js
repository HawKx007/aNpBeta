
//const PrivateKeyProvider = require('@truffle/hdwallet-provider');
//const privateKeys = [
//'0x8f2a55949038a9610f50fb23b5883af3b4ecb3c3bb792cbcefbd1542c692be63',
//'0xc87509a1c067bbde78beb793e6fa76530b6382a4c0241e5e4a9ec0a0f44dc0d3',
//'0xae6ae8e5ccbfb04590405997ee2d52d2b330726137b875053c36d94e974d162f'
//];
//const privateKeyProvider = new PrivateKeyProvider(
//privateKeys,
//
//0,
//3
//);
//odule.exports = {
//networks: {
//besugo: {
//host: "127.0.0.1", // Replace with the actual host
  //    port: 8545, // Replace with the actual port
  //  network_id: '1337'
 //    },
//provider: privateKeyProvider,
//network_id: '1337'
//},
//};

const PrivateKeyProvider = require('@truffle/hdwallet-provider');

const privateKeys = [
  '0x8f2a55949038a9610f50fb23b5883af3b4ecb3c3bb792cbcefbd1542c692be63',
  '0xc87509a1c067bbde78beb793e6fa76530b6382a4c0241e5e4a9ec0a0f44dc0d3',
  '0xae6ae8e5ccbfb04590405997ee2d52d2b330726137b875053c36d94e974d162f'
];

const privateKeyProvider = new PrivateKeyProvider(
  privateKeys,
  'http://127.0.0.1:8545',
  0,
  3
);

module.exports = {
  networks: {
    besugo: {
      provider: privateKeyProvider,
      network_id: '1337',
      gas: 4500000,     // <--- Add this
      gasPrice: 0,      // <--- Add this
    }
  }
};



























