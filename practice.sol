// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

// import "@openzeppelin/contracts/access/Ownable.sol";

// contract BuiltinModifierOnlyOwner is Ownable(msg.sender){

// function withdraw() public onlyOwner{
// }
//  }

/////role based access modofiers

contract CustomModifiers {
    enum roles {
        teacher,
        student,
        admin,
        owner
    }

    mapping(address => roles) public userRoles;

    modifier onlyTeacher() {
        require(userRoles[msg.sender] == roles.teacher, "Only teacher allowed");
        _;
    }

    function grading() public onlyTeacher {}
}
