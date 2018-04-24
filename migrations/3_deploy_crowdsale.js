const LambdaTokenSale = artifacts.require('./LambdaTokenSale.sol');
const LambdaToken = artifacts.require('./LambdaToken.sol');

module.exports = function(deployer, network, accounts) {
  const rate = new web3.BigNumber(1000);
  const wallet = accounts[0];
  deployer.deploy(LambdaTokenSale, rate, wallet, LambdaToken.address);
};