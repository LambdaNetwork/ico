const TethysToken = artifacts.require('TethysToken');
const TethysTokenTimeLock = artifacts.require('TethysTokenTimeLock');
const createTimeLock = require('../util/createTimeLock.js')

contract('createTimeLock', async (accounts) => {
  it('should create a TethysTokenTimeLock contract correctly', async () => {
    const token = await TethysToken.new(100);
    const releaseTime = Date.now() / 1000 + 60;

    const timeLock = await createTimeLock({
      TethysToken,
      TethysTokenTimeLock,
      tokenAddress: token.address,
      beneficiary: accounts[1],
      tokenAmount: 25,
      releaseTime
    });

    assert.equal(await timeLock.token.call(), token.address);
    assert.equal(await timeLock.beneficiary.call(), accounts[1]);
    assert.equal((await timeLock.releaseTime.call()).toNumber(), Math.floor(releaseTime));
  });

  it('should transfer the correct amount of tokens to the time lock contract', async () => {
    const token = await TethysToken.new(100);
    const decimals = (await token.decimals.call()).toNumber();
    const tokenAmount = 25;

    const timeLock = await createTimeLock({
      TethysToken,
      TethysTokenTimeLock,
      tokenAddress: token.address,
      beneficiary: accounts[1],
      tokenAmount: tokenAmount,
      releaseTime: Date.now() / 1000 + 60
    });

    assert.equal((await token.balanceOf.call(timeLock.address)).toNumber(), tokenAmount * (10 ** decimals));
  });
});