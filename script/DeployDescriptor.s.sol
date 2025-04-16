// script/DeployDescriptor.s.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.7.6;

import "forge-std/Script.sol";
import "@uniswap/v3-periphery/NonfungibleTokenPositionDescriptor.sol";

contract DeployDescriptor is Script {
    address constant WETH_ADDRESS = 0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496; // set deployed WETH address

    function run() public {
        vm.startBroadcast();
        NonfungibleTokenPositionDescriptor descriptor = new NonfungibleTokenPositionDescriptor(WETH_ADDRESS, bytes32("eth"));
        console.log("Descriptor deployed at:", address(descriptor));
        vm.stopBroadcast();
    }
}
