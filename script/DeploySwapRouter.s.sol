// script/DeploySwapRouter.s.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.7.6;

import "forge-std/Script.sol";
import "@uniswap/v3-periphery/SwapRouter.sol";

contract DeploySwapRouter is Script {
    address constant FACTORY = 0x...;
    address constant WETH9 = 0x...;

    function run() public {
        vm.startBroadcast();
        SwapRouter router = new SwapRouter(FACTORY, WETH9);
        console.log("Swap Router deployed at:", address(router));
        vm.stopBroadcast();
    }
}
