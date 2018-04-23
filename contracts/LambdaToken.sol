pragma solidity ^0.4.23;

import 'zeppelin-solidity/contracts/token/ERC20/StandardToken.sol';

contract LambdaToken is StandardToken {
  string public name = "Lambda Token";
  string public symbol = "LAMB";
  uint8 public decimals = 18;

  constructor(uint supply) {
    totalSupply_ = supply;
  	balances[msg.sender] = totalSupply_;
    Transfer(address(0x0), msg.sender, totalSupply_);
  }
}