// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract YourContract {

    // Define an event to log the values
    event LogValues(uint a, bool b);

    function multiOutput() public pure returns (uint, bool) {
        return (2, true);
    }

    function nameOutput() public pure returns (uint a, bool b) {
        return (1, true);
    }

    function varAssigned() public pure returns (uint a, bool b) {
        a = 1;
        b = true;
    }
    //Function for Sum
     function addValues(uint a, uint b) public pure returns (uint sum) {
        sum = a + b;
    }
    //Function for Diffrence
    function subtractValues(uint a, uint b) public pure returns (uint difference) {
        difference = a - b;
    }

    function destructAssigned() public {
        (uint a, bool b) = multiOutput();
        // Log the values of a and b
        emit LogValues(a, b);
    }
}