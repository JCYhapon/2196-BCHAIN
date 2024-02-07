// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// Data types - values and references

contract ValueTypes {
    bool public b = true;
    uint public u = 123;

    int public i = -123; 

    int public minInt = type(int).min;
    int public minMax = type(int).max;
    address public addr = 0x1A81A35506b58A8aeD57C1d93E4Faf35EaADbA2e;
}