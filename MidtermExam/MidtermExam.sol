// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract GradeContract {
address owner;
string public name;
uint256 public prelimGrade;
uint256 public midtermGrade;
uint256 public finalGrade;
uint256 public gradeComputed;

modifier onlyOwner() {
require(msg.sender == owner, "Caller is not the owner");
_;
}

modifier prelimGreaterthanZero(uint256 _prelimGrade) {
require( _prelimGrade < 100, "Grade must be greater than zero and less than 100");
_;
}

modifier midtermGreaterthanZero(uint256 _midtermGrade) {
require( _midtermGrade < 100, "Grade must be greater than zero and less than 100");
_;
}

modifier finalGreaterthanZero(uint256 _finalGrade) {
require( _finalGrade < 100, "Grade must be greater than zero and less than 100");
_;
}

constructor() {
owner = msg.sender;
}

//NAME
function setName(string calldata _name) public onlyOwner {
name = _name;
}

//PRELIM GRADE
function setPrelimGrade(uint256 _prelimGrade) public onlyOwner {
prelimGrade = _prelimGrade;
}

//MIDTERM GRADE
function setMidtermGrade(uint256 _midtermGrade) public onlyOwner {
midtermGrade = _midtermGrade;
}

//FINAL GRADE
function setFinalGrade(uint256 _finalGrade) public onlyOwner {
midtermGrade = _finalGrade;
}


function calculatedGrade() public onlyOwner {
require(  prelimGrade < 101 || midtermGrade < 101 || finalGrade < 101, "Grades cannot be zero");
gradeComputed = prelimGrade * midtermGrade * finalGrade;
}
}








