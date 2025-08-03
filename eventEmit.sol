// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

// Task:
// Create a StudentRegistry contract:

// Allow users to register with name and age.

// Emit an event StudentRegistered(address indexed student, string name, uint age).
contract StudentRegistry {
    struct student {
        string name;
        uint256 age;
    }
    student[] private s;
    event StudentRegistered(address indexed student, string name, uint age);

    function register(string memory _name, uint256 _age) public {
        student memory newStud = student(_name, _age);
        s.push(newStud);
      emit StudentRegistered(msg.sender, _name, _age);
    }
}
