// SPDX-License-Identifier: MIT
 pragma solidity ^0.8.19;

// // Q4:
// // Define a struct Profile { string name; uint age; }
// // Create a mapping from address to Profile.
// // Add functions:

// // setProfile(string, uint)

// // getProfile()
// contract MappingStruct{

// struct profile{
//     string name;
//     uint256 age;
// }

// profile[] public people;
// function setProfile(string memory _name,uint256 _age)public{
// profile memory newPerson=profile(_name,_age);
// people.push(newPerson);

// }

// function getProfile(uint256 index)public view returns(profile memory){
//     require(index<people.length,"no data found");
//     return people[index];

// }


// }
contract MappingStruct {
    struct Profile {
        string name;
        uint256 age;
    }

    mapping(address => Profile) public profiles;

    function setProfile(string memory _name, uint256 _age) public {
        profiles[msg.sender] = Profile(_name, _age);
    }

    function getProfile() public view returns (Profile memory) {
        return profiles[msg.sender];
    }
}
