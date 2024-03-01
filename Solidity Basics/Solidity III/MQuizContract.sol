// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract MQuizContract {
    address owner;
    uint256 public age;
    uint256 public hoursWorked;
    uint256 public hourlyRate;
    uint256 public totalSalary;

    modifier onlyOwner() {
    require(msg.sender == owner, "Caller is not the owner");
    _;
    }

    modifier rateGreaterThanZero(uint256 _rate) {
    require(_rate > 0, "Hourly rate must be greater than zero");
    _;
    }

    modifier hoursWorkedGreaterThanZero(uint256 _hoursWorked) {
    require(_hoursWorked > 0, "Hours worked must be greater than zero");
    _;
    }

    constructor() {
    owner = msg.sender;
    }

    function setAge(uint256 _age) public {
    age = _age;
    }

    function setHrsWrk(uint256 _hoursWorked) public onlyOwner hoursWorkedGreaterThanZero(_hoursWorked) {
    hoursWorked = _hoursWorked;
    }

    function setRate(uint256 _hourlyRate) public onlyOwner rateGreaterThanZero(_hourlyRate) {
    hourlyRate = _hourlyRate;
    }

    function calculateTotSal() public onlyOwner {
    require(hourlyRate > 0 && hoursWorked > 0, "Hourly rate or hours worked cannot be zero");
    totalSalary = hourlyRate * hoursWorked;
    }
}
