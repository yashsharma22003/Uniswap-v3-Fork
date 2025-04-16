// script/DeployPool.s.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.7.6;

import "forge-std/Script.sol";
import "@uniswap/v3-core/contracts/interfaces/IUniswapV3Factory.sol";
import "forge-std/console.sol";

contract DeployPool is Script {
    IUniswapV3Factory public factory;
    address public tokenA;
    address public tokenB;
    uint24 public fee = 3000; // Fee tier (0.3%)

    function setUp() public {
        factory = IUniswapV3Factory(0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496); // Replace with actual factory address if different
        tokenA = 0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496; // Replace with actual Token A address
        tokenB = 0x34A1D3fff3958843C43aD80F30b94c510645C316; // Replace with actual Token B address
    }

    function run() public {
        vm.startBroadcast();
        try factory.createPool(tokenA, tokenB, fee) {
            console.log("Pool created successfully");
        } catch (bytes memory err) {
            if (err.length > 0) {
                console.log("Error creating pool (bytes):", string(err));
            } else {
                console.log("Error creating pool: <Empty revert data>");
            }
        }
        vm.stopBroadcast();
    }
}
