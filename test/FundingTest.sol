pragma solidity ^0.4.11;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Funding.sol";

contract FundingTest{
  /*address funding;
  modifier onlyFunding(){
    require(msg.sender == funding);
    _;
  }*/

  function  testSetting() public {
    Funding funds = new Funding();
    Assert.equal(funds.owner(), this, "account is different");
  }
 function testSettingAnOwnerOfDeployedContract() public{
        Funding funding = Funding(DeployedAddresses.Funding());
        Assert.equal(funding.owner(), msg.sender, "An owner is different than a deployer");
  }
  function testAcceptingDonations() public {

 // A new Payable contract has a zero balance
 Funding funding = Funding(DeployedAddresses.Funding());

 address(funding).transfer(5000);
 Assert.equal(funding.raised(), 5000 wei,"Nope");



/*
  Funding funding = DeployedAddresses.Funding();
    Assert.equal(funding.raised(), 0, "Initial raised amount is different than 0");

    //funding.donate.value(10 finney);
    //funding.donate.value(50 finney);
    //funding.donate.value(10 finney);
    //Working with donations
    //address(funding).call.value(1 ether)(bytes4(keccak256("donate()")));
    //(Funding(funding)).transfer(1 ether);
    //address fund = Funding(funding);
    //fund.call.value(10 finney)();

    //funding.deposit.value(10 finney).gas(800)();
    funding.call({value: web3.toWei(0.5, "ether"), from: accounts[0]});
    //address.transfer(10 finney);
    //uint localD = funding.set(30 finney) ;
    Assert.equal(funding.raised(), 30 finney, "Raised amount is different than sum of donations");

    */
  }


}
