module.exports = async function(args) {
  const {TethysToken, TethysTokenTimeLock, tokenAddress, beneficiary, tokenAmount, releaseTime} = args;
  const token = await TethysToken.at(tokenAddress)
  const decimals = (await token.decimals.call()).toNumber()
  const multiplier = 10 ** decimals
  const amount = tokenAmount * multiplier

  const timeLock = await TethysTokenTimeLock.new(token.address, beneficiary, releaseTime)

  await token.transfer(timeLock.address, amount)

  return timeLock
}