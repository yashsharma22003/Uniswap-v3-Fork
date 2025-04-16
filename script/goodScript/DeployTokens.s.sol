// script/DeployTokens.s.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.7.6;

import "forge-std/Script.sol";
import {TokenA} from "script/goodScript/ERC20/TokenA.sol";
import {TokenB} from "script/goodScript/ERC20/TokenB.sol";

contract DeployTokens is Script {
    address public deployer;

    function setUp() public {
        deployer = vm.addr(vm.envUint("PRIVATE_KEY"));
    }

    function run() public {
        vm.startBroadcast();
        vm.deal(deployer, 2 ether); // Provide enough Ether for both deployments

        TokenA tokenA = new TokenA(1000000 * 10**18);
        console.log("TokenA deployed to:", address(tokenA));

        TokenB tokenB = new TokenB(1000000 * 10**18);
        console.log("TokenB deployed to:", address(tokenB));

        vm.stopBroadcast();
    }
}
