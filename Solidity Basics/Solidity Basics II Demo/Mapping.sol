// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract MappingExample {
//Define a mapping to store values associated with addressses
mapping (address => uint256) public valueMapping;

//Function to set a value for the sender's address
function setValues(uint256 _value) public {
valueMapping[msg.sender] = _value;
}

//Function to retrieve the value associated wiht the sender's address
function getValue() public view returns (uint256) {
return valueMapping[msg.sender];
}
}