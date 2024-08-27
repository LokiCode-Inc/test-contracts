// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract ContractAndInterface {
    uint256 public storedData;

    function set(uint256 data1) public {
        storedData = data1;
    }

    function get() public view returns (uint256) {
        return storedData;
    }
}

interface IERC20 {
    function totalSupply() external view returns (uint256);
    function balanceOf(address account) external view returns (uint256);
    function transfer(address recipient, uint256 amount)
        external
        returns (bool);
    function allowance(address owner, address spender)
        external
        view
        returns (uint256);
    function approve(address spender, uint256 amount) external returns (bool);
    function transferFrom(address sender, address recipient, uint256 amount)
        external
        returns (bool);
}