// SPDX-License-Identifier: MIT
pragma solidity ^0.7.6;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract TokenB is ERC20 {
    constructor(uint256 initialSupply) ERC20("TokenB", "TKNB") {
        _mint(msg.sender, initialSupply);
    }
}