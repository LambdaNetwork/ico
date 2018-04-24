pragma solidity ^0.4.23;

import 'zeppelin-solidity/contracts/crowdsale/Crowdsale.sol';
import './LambdaToken.sol';

contract LambdaTokenSale is Crowdsale {
	constructor(uint256 _rate, address _wallet, LambdaToken _token) Crowdsale(_rate, _wallet, _token) public {
	}
}