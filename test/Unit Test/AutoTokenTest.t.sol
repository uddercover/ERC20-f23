//SPDX-License-Identifier:MIT
pragma solidity ^0.8.18;

import {Test, console} from "forge-std/Test.sol";
import {AutoToken} from "../../src/AutoToken.sol";

contract AutoTokenTest is Test {
    uint256 initialSupply = 1000 ether;
    address OWNER = makeAddr("owner");
    AutoToken autoToken;

    function setUp() public {
        vm.startBroadcast(OWNER);
        autoToken = new AutoToken(initialSupply);
        vm.stopBroadcast();
        vm.deal(OWNER, 1 ether);
    }

    //AutoToken
    function testInitialSupplyIsMintedForMsgSender() public view {
        uint256 ownerBalance = autoToken.balanceOf(OWNER);
        console.log(ownerBalance);
        assert(ownerBalance > 0);
    }
}
