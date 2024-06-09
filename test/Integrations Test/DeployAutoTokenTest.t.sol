//SPDX-License-Identifier:MIT
pragma solidity ^0.8.18;

import {Test, console} from "forge-std/Test.sol";
import {DeployAutoToken} from "../../script/DeployAutoToken.s.sol";

contract DeployAutoTokenTest is Test {
    DeployAutoToken deployer;
    address autoToken;

    function testDeployAutoTokenSuccessfullyDeploysAutoToken() public {
        deployer = new DeployAutoToken();
        autoToken = deployer.run();
        assert(autoToken != address(0));
    }
}
