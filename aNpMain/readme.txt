public config - 
n1> besu --data-path=/home/hawk/aNpMain/aNpNet/node1/nd1  --genesis-file=/home/hawk/aNpMain/aNpNet/aNpNetPrivateGenesis.json --miner-enabled --miner-coinbase fe3b557e8fb62b89f4916b721be55ceb828dbd73 --rpc-http-enabled --host-allowlist="*" --rpc-http-cors-origins="all"  

n2> besu --data-path=/home/hawk/aNpMain/aNpNet/node2/nd2 --genesis-file=/home/hawk/aNpMain/aNpNet/aNpNetPrivateGenesis.json --bootnodes=enode://95dc94f0924ce21990e8b849d9128d83a57a3dd7bc5434709443f684ade4aa1adf6de9886ef3b6fae69f235cad353844b3d4e85710f81fee1618d139d03157a7@127.0.0.1:30303 --p2p-port=30304


n3> besu --data-path=/home/hawk/aNpMain/aNpNet/node3/nd3 --genesis-file=/home/hawk/aNpMain/aNpNet/aNpNetPrivateGenesis.json --bootnodes=enode://95dc94f0924ce21990e8b849d9128d83a57a3dd7bc5434709443f684ade4aa1adf6de9886ef3b6fae69f235cad353844b3d4e85710f81fee1618d139d03157a7@127.0.0.1:30303 --p2p-port=30305

private config - 
besu --data-path=/home/hawk/aNpMain/aNpNet/node1/nd1  --genesis-file=/home/hawk/aNpMain/aNpNet/aNpNetPrivateGenesis.json --miner-enabled --miner-coinbase fe3b557e8fb62b89f4916b721be55ceb828dbd73 --rpc-http-enabled --host-allowlist="*" --rpc-http-cors-origins="*"  

besu --data-path=/home/hawk/aNpMain/aNpNet/node1/nd1--genesis-file=/home/hawk/aNpMain/aNpNet/aNpNetPrivateGenesis.json--network-id=28888 --miner-enabled --miner-coinbase=fe3b557e8fb62b89f4916b721be55ceb828dbd73 --rpc-http-enabled --host-allowlist="*" --rpc-http-cors-origins="all"

dev net config - 
besu --data-path=/home/hawk/aNpMain/aNpNet/node1/nd1--genesis-file=/home/hawk/aNpMain/aNpNet/aNpNetPrivateGenesis.json--network=dev --miner-enabled --miner-coinbase=fe3b557e8fb62b89f4916b721be55ceb828dbd73 --rpc-http-enabled --host-allowlist="*" --rpc-http-cors-origins="all"

/ "test": "echo \"Error: no test specified\" && exit 1"


private key generator - besu operator generate-blockchain-config --config-file=config.toml --private-key-file=private-keys.txt --num-validators=3

node generateKeys.js

test private key - 0x8f2a55949038a9610f50fb23b5883af3b4ecb3c3bb792cbcefbd1542c692be63
0xc87509a1c067bbde78beb793e6fa76530b6382a4c0241e54a9ec0a0f44dc0d3
0xae6ae8e5ccbfb04590405997ee2d52d2b330726137b875053c36d94e974d162f


old package config - 


const PrivateKeyProvider = require('@truffle/hdwallet-provider');
const privatekeys = [
'0x8f2a55949038a9610f50fb23b5883af3b4ecb3c3bb792cbcefbd1542c692be63',
'0xc87509a1c067bbde78beb793e6fa76530b6382a4c0241e54a9ec0a0f44dc0d3',
'0xae6ae8e5ccbfb04590405997ee2d52d2b330726137b875053c36d94e974d162f'
];
const privateKeyProvider = new PrivateKeyProvider(
privateKeys,
'http://127.0.0.1:8550',
0,
3
);
module.exports = {
networks: {
besu: {
provider: privateKeyProvider,
network_id: '*'
}
}
}

v2 package config -
const PrivateKeyProvider = require('@truffle/hdwallet-provider');

const privateKeys = [
  '0x8f2a55949038a9610f50fb23b5883af3b4ecb3c3bb792cbcefbd1542c692be63',
  '0xc87509a1c067bbde78beb793e6fa76530b6382a4c0241e54a9ec0a0f44dc0d3',
  '0xae6ae8e5ccbfb04590405997ee2d52d2b330726137b875053c36d94e974d162f'
];

module.exports = {
  networks: {
    besugo: {
      provider: function () {
        return new PrivateKeyProvider(privateKeys, 'http://127.0.0.1:8550', 0, privateKeys.length);
      },
      network_id: '*'
    }
  }
};
.........................
#use anp_new for updated method check
#use xylo_sol for new cross_border test
#use little_ace_sol for post lattice_based_encryption check 
#use anp_lightweight for light_weight encryption test
