// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract CharleneSample is ERC20, Ownable(msg.sender) {
    constructor() ERC20("Sample", "SPL") {
        _mint(msg.sender, 1000000 * 10 ** decimals()); // Mint initial supply to contract creator
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
