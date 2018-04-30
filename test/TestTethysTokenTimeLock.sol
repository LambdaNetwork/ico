pragma solidity ^0.4.23;

import "truffle/Assert.sol";
import "../contracts/TethysToken.sol";
import "../contracts/TethysTokenTimeLock.sol";

contract TestTethysTokenTimeLock {
  function testConstructor() public {
    uint releaseTime = now + 100 seconds;

    TethysToken token = new TethysToken(100);
    TethysTokenTimeLock holder = new TethysTokenTimeLock(token, address(1), releaseTime);

    Assert.equal(holder.token(), token, "token should be set correctly");
    Assert.equal(holder.beneficiary(), address(1), "beneficiary should be set correctly");
    Assert.equal(holder.releaseTime(), releaseTime, "releaseTime should be set correctly");
  }
}
