// script/DeployPositionManager.s.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.7.6;

import "forge-std/Script.sol";
import "@uniswap/v3-periphery/contracts/NonfungiblePositionManager.sol";

contract DeployPositionManager is Script {
    address constant FACTORY = 0x...;
    address constant WETH9 = 0x...;
    address constant DESCRIPTOR = 0x...;

    function run() public {
        vm.startBroadcast();
        NonfungiblePositionManager manager = new NonfungiblePositionManager(FACTORY, WETH9, DESCRIPTOR);
        console.log("Position Manager deployed at:", address(manager));
        vm.stopBroadcast();
    }
}
