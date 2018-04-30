const LambdaToken = artifacts.require('./TethysToken.sol');

module.exports = function(deployer, network, accounts) {
  deployer.deploy(LambdaToken, 100)
};