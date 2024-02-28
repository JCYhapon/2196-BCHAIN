// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Ownable {
    address public owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "You CANNOT use this function as you are NOT the owner");
        _;
    }

    function transferOwnership(address newOwner) public onlyOwner {
        require(newOwner != address(0), "New owner address is INVALID");
        emit OwnershipTransferred(owner, newOwner);
        owner = newOwner;
    }
}

contract MyContract is Ownable {
    uint256 public someValue;

    function setSomeValue(uint256 newValue) public onlyOwner {
        someValue = newValue;
    }
}