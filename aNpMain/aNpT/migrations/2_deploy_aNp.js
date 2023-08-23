// 2_deploy_aNp.js
//var aNp = artifacts.require("aNp");

//module.exports = function(deployer) {

//var YourContract = artifacts.require("YourContract");

//compilers: {
 //   solc: {
 //     version: "0.5.16",
//    },
 // },
//  networks: {
//    besugo: {
//      host: "127.0.0.1", // Replace with the actual host
//      port: 8550, // Replace with the actual port
 //     network_id: "1337", // Replace with the desired network ID or leave "*" for any network
 //   },
//  },
//  deployer.deploy(aNp);
//};

var aNp = artifacts.require("aNp");

module.exports = function(deployer) {
  deployer.deploy(aNp);
};

