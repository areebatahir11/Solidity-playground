// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Revision{
   struct Student{
    string name;
    uint marks;
   }
    
    mapping(address => Student) public students;

function updateStudent(string memory _name, uint _marks) public {
    students[msg.sender].name = _name;
    students[msg.sender].marks = _marks;
}
}