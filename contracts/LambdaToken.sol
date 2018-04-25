pragma solidity ^0.4.23;

import 'zeppelin-solidity/contracts/token/ERC20/StandardToken.sol';

contract LambdaToken is StandardToken {
  string public name = "Lambda Token";
  string public symbol = "LAMB";
  uint8 public decimals = 18;

  constructor(uint totalTokens) public {
    totalSupply_ = totalTokens * (10 ** uint256(decimals));
    balances[msg.sender] = totalSupply_;
    emit Transfer(address(0x0), msg.sender, totalSupply_);
  }
}
