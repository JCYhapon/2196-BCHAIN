// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MappingExample {
    mapping(address => uint256) public valueMapping;

    function setValue(uint256 _value) public {
        // REQUIRE ERROR HANDLING
        require(_value != 0, "value cannot be zero");
        valueMapping[msg.sender] = _value;
    }
    function getValue() public view returns (uint256) {
        require(valueMapping[msg.sender] != 0, "No value set for sender");
        return valueMapping[msg.sender];
    }
   
}