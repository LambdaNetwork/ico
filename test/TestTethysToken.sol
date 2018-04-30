pragma solidity ^0.4.23;

import "truffle/Assert.sol";
import "../contracts/TethysToken.sol";

contract TestTethysToken {
  function testTotalSupply() public {
    TethysToken token = new TethysToken(100);

    Assert.equal(token.totalSupply(), 100 * (10 ** uint256(token.decimals())), "total supply should be set correctly");
  }

  function testInitialBalanceOfOwner() public {
    TethysToken token = new TethysToken(100);

    Assert.equal(token.balanceOf(address(this)), 100 * (10 ** uint256(token.decimals())), "contract creator balance should be set correctly");
  }
}
