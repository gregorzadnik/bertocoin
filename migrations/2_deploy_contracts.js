const BertoCoin = artifacts.require("BertoCoin");

module.exports = function (deployer) {
  deployer.deploy(BertoCoin, 1000000);
};
