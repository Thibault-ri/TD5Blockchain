pragma solidity >=0.4.25 <0.7.0;

import "./ConvertLib.sol";

// This is just a simple example of a coin-like contract.
// It is not standards compatible and cannot be expected to talk to other
// coin/token contracts. If you want to create a standards-compliant
// token, see: https://github.com/ConsenSys/Tokens. Cheers!

contract MetaCoin {
	mapping (address => uint) balances;

	event Transfer(address indexed _from, address indexed _to, uint256 _value);

	constructor() public {
		balances[tx.origin] = 10000;
	}

	function sendCoin(address receiver, uint amount) public returns(bool sufficient) {
		if (balances[msg.sender] < amount) return false;
		balances[msg.sender] -= amount;
		balances[receiver] += amount;
		emit Transfer(msg.sender, receiver, amount);
		return true;
	}

	function getBalanceInEth(address addr) public view returns(uint){
		return ConvertLib.convert(balanceOf(addr),2);
	}

	function balanceOf(address addr) public view returns(uint) {
		return balances[addr];
	}

  function totalSupply() public view returns (uint256){
    return(10);
  }

  function transfer(address _to, uint256 _value) public returns (bool success){
    return(true);
  }

  function transferFrom(address _from, address _to, uint256 _value) public returns (bool success)
  {
    return(true);
  }

  function approve(address _spender, uint256 _value) public returns (bool success){
    return(true);
  }

  function allowance(address _owner, address _spender) public view returns (uint256 remaining){
    return(10);
  }



  event Approval(address indexed _owner, address indexed _spender, uint256 _value);
}
