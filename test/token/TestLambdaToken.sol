pragma solidity ^0.4.23;

import "truffle/Assert.sol";
import "../../contracts/LambdaToken.sol";

contract TestLambdaToken {
  function testTotalSupply() {
    LambdaToken token = new LambdaToken();

    Assert.equal(token.totalSupply(), 1000000000000000000000, "total supply should be set correctly");
  }

  function testInitialBalanceOfOwner() {
    LambdaToken token = new LambdaToken();

    Assert.equal(token.balanceOf(address(this)), 1000000000000000000000, "contract creator balance should be set correctly");
  }
}
