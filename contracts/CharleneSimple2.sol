// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract CharleneSample2 is ERC20, ERC20Burnable {
    constructor() ERC20("Sample", "SPL") {
        _mint(msg.sender, 1000000 * 10 ** decimals()); // Mint initial supply to contract creator
    }

    function mint(address to, uint256 amount) public {
        _mint(to, amount);
    }
}
