// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

contract MarksStudent {
address walletaddress;

    struct Student{
        string name;
        uint256 marks;
    }
    mapping(address=>Student) mymap;

    function gettingStudent(Student memory _s) public{
       mymap[walletaddress]=_s;
    }


}
