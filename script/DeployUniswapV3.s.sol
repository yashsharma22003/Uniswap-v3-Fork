// script/BasicDeployUniswapV3.s.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.7.6;

import "forge-std/Script.sol";
import "forge-std/console.sol";
import "@uniswap/v3-core/contracts/UniswapV3Factory.sol";

contract DeployUniswapV3 is Script {
    address public deployer;
    UniswapV3Factory public factory;

    function setUp() public {
        // Get the deployer's private key from the environment
        deployer = vm.addr(vm.envUint("PRIVATE_KEY"));
    }

    function run() public {
        vm.startBroadcast();
        deployFactory();
        vm.stopBroadcast();
    }

function deployFactory() internal {
    console.log("--- Deploying UniswapV3Factory ---");
    factory = new UniswapV3Factory();
    console.log("UniswapV3Factory deployed to:", address(factory));
    console.log("Initial owner:", factory.owner()); // Correctly calling the getter for 'owner'
    console.log("Deployer (initial owner):", deployer);
}
}