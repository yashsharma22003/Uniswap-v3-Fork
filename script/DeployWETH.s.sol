// script/DeployWETH.s.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.7.6;

import "forge-std/Script.sol";
import "./WETH9.sol";

contract DeployWETH is Script {
    function run() public {
        vm.startBroadcast();
        WETH9 weth = new WETH9();
        console.log("WETH deployed at:", address(weth));
        vm.stopBroadcast();
    }
}
