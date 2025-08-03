// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

contract Vehicle {
    string typeOfVehicle;
}

contract car is Vehicle {
    function setTypeOfvehicle() public {
        typeOfVehicle = "car";
    }
    function getTypeOfVehicle() public view returns (string memory) {
        return typeOfVehicle;
    }
}
