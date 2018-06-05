pragma solidity ^0.4.11;
/*

1- truffle develop
  migrate
  Funding.deployed().then(function(instance){return instance.donate();});
  Use enter
  Use V
2-truffle develop --log
*/

contract Funding{
  uint public raised;
  address public owner;
  constructor() public{
    owner = msg.sender;
    }
    function deposit() public payable{
      raised += msg.value;
    }
    function set(uint value) public returns(uint){
      raised += value;
      return raised;
    }
    // `fallback` function called when eth is sent to Payable contract
   function() payable public{
    raised += msg.value;
   }
}
