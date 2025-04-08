// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {Script, console2} from "forge-std/Script.sol";
import {ERC20Mock} from "@openzeppelin/contracts/mocks/token/ERC20Mock.sol";

contract DeployUsdc is Script {
    ERC20Mock usdc;

    function run() public {
        deployUsdc();
    }

    function deployUsdc() public returns (address) {
        vm.startBroadcast();
        usdc = new ERC20Mock();
        vm.stopBroadcast();
        return address(usdc);
    }
}
