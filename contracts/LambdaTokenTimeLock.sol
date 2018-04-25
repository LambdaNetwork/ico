import 'zeppelin-solidity/contracts/token/ERC20/TokenTimelock.sol';
import './LambdaToken.sol';

contract LambdaTokenTimeLock is TokenTimelock {
	constructor(LambdaToken _token, address _beneficiary, uint256 _releaseTime) TokenTimelock(_token, _beneficiary, _releaseTime) public {
  }
}