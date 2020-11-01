pragma solidity ^0.5.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/SupplyChain.sol";

contract TestSupplyChain {

 /*SupplyChain supplychainInstance = SupplyChain(DeployedAddresses.SupplyChain());
    address acc0;
    address acc1;
    address acc2;

     function beforeAll() public {
        acc0 = supplychainInstance.getAccount(0); 
        acc1 = supplychainInstance.getAccount(1);
        acc2 = supplychainInstance.getAccount(2);
     }
    
    function testOwnerNotWorking() public returns (bool) {
        return Assert.equal(supplychainInstance.owner(),acc0,"owner is different");
        
    }
	*/

    function testOwnerWorking() public returns (bool) {
           SupplyChain supplychainInstance = SupplyChain(DeployedAddresses.SupplyChain());
         return Assert.equal(supplychainInstance.owner(),msg.sender,"owner is different");
        
     }

    
    // function beforeEach() public{
    //     supplychainInstance = new SupplyChain();
        
    // }

    // Test for failing conditions in this contracts:
    // https://truffleframework.com/tutorials/testing-for-throws-in-solidity-tests

    // buyItem

    // test for failure if user does not send enough funds
    // test for purchasing an item that is not for Sale

    // function testItemNotForSale() public {
        
    //     Assert.equal(,,"This Item is not for sale");
    // }

    // shipItem

    // test for calls that are made by not the seller
    // test for trying to ship an item that is not marked Sold

    // receiveItem

    // test calling the function from an address that is not the buyer
    // test calling the function on an item not marked Shipped

    // function testItemNotShipped() public {

    //     Assert.equal(,,"Item not marked as shipped");
    // }

}
