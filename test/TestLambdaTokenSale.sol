pragma solidity ^0.4.23;

import "truffle/Assert.sol";
import "../contracts/LambdaToken.sol";
import "../contracts/LambdaTokenSale.sol";

contract TestLambdaTokenSale {
  function testConstructor() public {
    LambdaToken token = new LambdaToken(100);
    LambdaTokenSale sale = new LambdaTokenSale(1, address(1), token);

    Assert.equal(sale.rate(), 1, "rate should be set correctly");
    Assert.equal(sale.wallet(), address(1), "wallet should be set correctly");
    Assert.equal(sale.token(), token, "token should be set correctly");
  }
}
