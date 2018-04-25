const LambdaToken = artifacts.require('./LambdaToken.sol');

module.exports = function(deployer, network, accounts) {
  deployer.deploy(LambdaToken, 100)
};