// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MidtermArray{
	uint[] public arr;
	uint[] public arr2 = [1, 2, 3];
	uint[10] public myFixedSizeArr;


function get(uint i) public view returns (uint) {
	return arr[i];
}

function getArr() public view returns (uint[] memory) {
	return arr;
}

function push(uint i) public {
	arr.push(i);
}

function pop() public {
	arr.pop();
}

function remove(uint index) public {
	delete arr[index];
}

// Similar to push, this function appends a value to the dynamic array
function appendValue(uint value) public {
        arr.push(value);
    }

// Similar to pop, this function removes the last element from the dynamic array
function removeLastElement() public {
        require(arr.length > 0, "Array is empty");
        arr.pop();
    }


}