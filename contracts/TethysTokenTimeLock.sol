import 'zeppelin-solidity/contracts/token/ERC20/TokenTimelock.sol';
import './TethysToken.sol';

contract TethysTokenTimeLock is TokenTimelock {
	constructor(TethysToken _token, address _beneficiary, uint256 _releaseTime) TokenTimelock(_token, _beneficiary, _releaseTime) public {
  }
}