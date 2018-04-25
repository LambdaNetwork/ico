pragma solidity ^0.4.23;

import "truffle/Assert.sol";
import "../contracts/LambdaToken.sol";
import "../contracts/LambdaTokenTimeLock.sol";

contract TestLambdaTokenTimeLock {
  function testConstructor() public {
    uint releaseTime = now + 100 seconds;

    LambdaToken token = new LambdaToken(100);
    LambdaTokenTimeLock holder = new LambdaTokenTimeLock(token, address(1), releaseTime);

    Assert.equal(holder.token(), token, "token should be set correctly");
    Assert.equal(holder.beneficiary(), address(1), "beneficiary should be set correctly");
    Assert.equal(holder.releaseTime(), releaseTime, "releaseTime should be set correctly");
  }
}
