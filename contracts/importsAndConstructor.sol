// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/access/Ownable.sol";

contract FullFeatureContract is Ownable {
    uint256 private initialValue;

   constructor(address initialOwner1)
        Ownable(initialOwner1)
    {}

    function getInitialValue() public view onlyOwner returns (uint256) {
        return initialValue;
    }
}

