// script/DeployFactory.s.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.7.6;

import "forge-std/Script.sol";
import "@uniswap/v3-core/contracts/UniswapV3Factory.sol";

contract DeployFactory is Script {
    address public deployer;

    function setUp() public {
        deployer = vm.addr(vm.envUint("PRIVATE_KEY")); // Get the deployer address from environment
    }

    function run() public {
        vm.startBroadcast();
        UniswapV3Factory factory = new UniswapV3Factory();
        console.log("UniswapV3Factory deployed to:", address(factory));
        vm.stopBroadcast();
    }
}
