// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;



contract GlobalVariables {
    function globalVars() external view returns (address, uint, uint) {
        address sender = msg.sender;
        uint timestamp = block.timestamp;
        uint blockNum = block.number;
        return (sender, timestamp, blockNum);
    }

        function globalVars2() external view returns (address, uint, uint) {
        address HolyAngelUniversity = msg.sender;
        uint TimeLimit = block.timestamp;
        uint NewNumber = block.number;
        return (HolyAngelUniversity, TimeLimit, NewNumber);
    }

        function globalVars3() external view returns (address, uint, uint) {
        address AngelesCity = msg.sender;
        uint TimeInput = block.timestamp;
        uint NumberNum = block.number;
        return (AngelesCity, TimeInput, NumberNum);
    }
}