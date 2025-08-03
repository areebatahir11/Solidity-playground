// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

contract RequireUsage {
    struct profile {
        string name;
        uint256 age;
    }

    profile[] public profiles;
    modifier OnlyAdult(uint256 index) {
        require(index < profiles.length, "No data found!");
        require(profiles[index].age > 18, "not adult");
        _;
    }
    function setPerson(string memory _n, uint256 _a)public{
        profile memory p=profile(_n,_a);
        profiles.push(p);
    }

    bool public isActive;
    modifier IsOnlyActive(){
        require(isActive==true);
        _;
    }
}
