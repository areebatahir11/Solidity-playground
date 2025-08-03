//SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

contract MappingLearn {
    struct Student {
        string name;
        uint256 age;
    }

    mapping(string => uint256) public nameToAge;

    // Student public s1 = Student({name: "areeba", age: 20});

    Student[] public students;

    function addStudent(string memory _name, uint256 _age) public {
        // Student memory s1 = Student({name: _name, age: _age});
        // students.push(s1);
        students.push(Student(_name, _age));
        nameToAge[_name] = _age;
    }

    //one more method to add students is by loop
    //this method is overriding each input of above function and not adding any new students

    // function addStudentByLoop(string memory _name, uint256 _age) public {
    //     for (uint256 i = 0; i < students.length; i++) {
    //         students[i] = Student({name: _name, age: _age});
    //     }
    // }
}
