//SPDX-License-Identifier:MIT
pragma solidity ^0.8.18;

import {Test, console} from "forge-std/Test.sol";
import {AutoToken} from "../src/AutoToken.sol";

contract AutoTokenTest is Test {
    function setUp() public {
        vm.startBroadcast();
        AutoToken autoToken = new AutoToken(1000 ether);
        vm.stopBroadcast();
    }
}
