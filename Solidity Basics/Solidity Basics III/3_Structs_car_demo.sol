// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CarRegistry {

    struct Car {
        string model;
        uint year;
        address owner;
    }

    Car public car;

    Car[] public cars;
    mapping(address => Car[]) public carsByOwner;

    function someApplications() external {

        Car memory toyota;
        toyota.model = "Toyota";
        toyota.year = 1990;
        toyota.owner = msg.sender;

        Car memory lambo;
        lambo.model = "Lamborghini";
        lambo.year = 1980;
        lambo.owner = msg.sender;

        Car memory tesla;
        tesla.model = "Tesla";
        tesla.year = 1983;
        tesla.owner = msg.sender;

        cars.push(toyota);
        cars.push(lambo);
        cars.push(tesla);
        cars.push(Car('Ferrari', 2020, msg.sender));

        Car storage _car = cars[0];
        _car.year = 1990;
        delete _car.owner;

        delete cars[1];
    }

    function getCarByIndex(uint index) external view returns (Car memory) {
        require(index < cars.length, "Index out of bounds");
        return cars[index];
    }

    function getCarsByOwner() external view returns (Car[] memory) {
        return carsByOwner[msg.sender];
    }
}
