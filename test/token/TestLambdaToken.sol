pragma solidity ^0.4.23;

import "truffle/Assert.sol";
import "../../contracts/LambdaToken.sol";

contract TestLambdaToken {
  function testInitialSupply() {
    LambdaToken token = new LambdaToken(100);

    Assert.equal(token.totalSupply(), 100, "initial supply should be set correctly");
  }

  function testInitialBalanceOfOwner() {
    LambdaToken token = new LambdaToken(100);

    Assert.equal(token.balanceOf(address(this)), 100, "contract creator balance should be set correctly");
  }
}