// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract SimpleContract {
    uint256 public storedData;

    function set(uint256 data1) public {
        storedData = data1;
    }

    function get() public view returns (uint256) {
        return storedData;
    }
}

contract SimpleContract2 {
    uint256 public storedData2;

    function set2(uint256 data1) public {
        storedData2 = data1;
    }

    function get2() public view returns (uint256) {
        return storedData2;
    }
}
