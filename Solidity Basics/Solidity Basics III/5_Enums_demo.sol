// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Enum {
    enum Status {
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Canceled
    }

    Status public status;

    function get() public view returns (uint256) {
        return uint256(status);
    }

    function set(uint256 _status) public {
        require(_status <= 4, "Invalid status value");
        status = Status(_status);
    }

    function cancel() public {
        status = Status.Canceled;
    }

    function accept() public {
        status = Status.Accepted;
    }

    function reset() public {
        status = Status.Pending;
    }

    function getStatusName() public view returns (string memory) {
        if (status == Status.Pending) {
            return "Pending";
        } else if (status == Status.Shipped) {
            return "Shipped";
        } else if (status == Status.Accepted) {
            return "Accepted";
        } else if (status == Status.Rejected) {
            return "Rejected";
        } else if (status == Status.Canceled) {
            return "Canceled";
        } else {
            revert("Unknown status");
        }
    } 
}
