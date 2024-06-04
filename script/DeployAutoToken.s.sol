//SPDX-License-Identifier:MIT
pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";
import {AutoToken} from "../src/AutoToken.sol";

contract DeployAutoToken is Script {
    uint256 private constant INITIAL_SUPPLY = 100 ether;
    function run() external returns (string memory) {
        AutoToken autoToken;
        vm.startBroadcast();
        autoToken = new AutoToken(INITIAL_SUPPLY);
        vm.stopBroadcast();

        return ("This is your token address: autoToken");
    }
}
