const LambdaTokenTimeLock = artifacts.require('./LambdaTokenTimeLock.sol');
const LambdaToken = artifacts.require('./LambdaToken.sol');

module.exports = function(deployer, network, accounts) {
  const sender = LambdaToken.address
  console.log(sender)
  const beneficiary = "0xB55696323d362cf9Eeb400667660c41aB519D8CD"
  const releaseTime = Date.now() / 1000 + 60

  deployer
    .deploy(LambdaTokenTimeLock, sender, beneficiary, releaseTime)
    .then(() => {
      LambdaToken
        .deployed()
        .then(token => token.transfer(LambdaTokenTimeLock.address, 10000000000000000000))
    })
};