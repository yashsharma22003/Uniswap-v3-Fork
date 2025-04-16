// script/DeployPositionManager.s.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.7.6;

import "forge-std/Script.sol";
import "@uniswap/v3-periphery/NonfungiblePositionManager.sol";

contract DeployPositionManager is Script {
    address public deployer;
    address public factory;
    address public weth9;

    function setUp() public {
        deployer = vm.addr(vm.envUint("PRIVATE_KEY"));
        factory = 0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496; // Replace with actual UniswapV3Factory address
        // weth9 = 0x...; // WETH9 contract address
    }

    function run() public {
        vm.startBroadcast();
        // Deploy NonfungiblePositionManager without descriptor
        NonfungiblePositionManager manager = new NonfungiblePositionManager(factory, weth9, address(this));
        console.log("Position Manager deployed at:", address(manager));
        vm.stopBroadcast();
    }
}
