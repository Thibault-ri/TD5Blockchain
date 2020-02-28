pragma solidity >=0.4.25 <0.7.0;


contract Migrations {
  address public owner;
  uint public last_completed_migration;

  modifier restricted() {
    if (msg.sender == owner) _;
  }

  constructor() public {
    owner = msg.sender;
  }

  function setCompleted(uint completed) public restricted {
    last_completed_migration = completed;
  }

  function name() public view returns (string){
    return("Test");
  }

  function symbol() public view returns (string){
    return("N");
  }

  function decimals() public view returns (uint8){
    return(6);
  }

  function totalSupply() public view returns (uint256){
    return(10);
  }

  function balanceOf(address _owner) public view returns (uint256 balance){
    return(100);
  }

  function transfer(address _to, uint256 _value) public returns (bool success){
    return(True);
  }

  function transferFrom(address _from, address _to, uint256 _value) public returns (bool success)
  {
    return(True);
  }

  function approve(address _spender, uint256 _value) public returns (bool success){
    return(True);
  }

  function allowance(address _owner, address _spender) public view returns (uint256 remaining){
    return(10);
  }

  event Transfer(address indexed _from, address indexed _to, uint256 _value);

  event Approval(address indexed _owner, address indexed _spender, uint256 _value);
}
