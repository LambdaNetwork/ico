const TethysToken = artifacts.require('./TethysToken.sol');
const TethysTokenTimeLock = artifacts.require('./TethysTokenTimeLock.sol');
const createTimeLock = require('../util/createTimeLock.js')

const TOKEN_ADDRESS = '';

const BENEFICIARY = '';
const TOKEN_AMOUNT = 0;
const RELEASE_TIME = Date.now() / 1000 + 300;

module.exports = async function(callback) {
  try {
    const timeLock = await createTimeLock({
      TethysToken,
      TethysTokenTimeLock,
      tokenAddress: TOKEN_ADDRESS,
      releaseTime: RELEASE_TIME,
      beneficiary: BENEFICIARY,
      tokenAmount: TOKEN_AMOUNT
    });

    console.log(`Created new time lock contract at ${timeLock.address} and sent ${TOKEN_AMOUNT} tokens locked until ${new Date(RELEASE_TIME * 1000)}`)
    callback()
  } catch(e) {
    console.error(e)
    callback(e)
  }
}