//SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

contract FavouriteNumber {
    //uint256 public myfavouriteNumber;

    //uint256[] public favouriteNumber = [23, 45, 67, 89];

    //we don't which person has favourite number 67 and all that
    //for making real life contracts we need such informations
    //so for making our own types we use structs as below
    struct person {
        string name;
        uint256 age;
    }
    person[] public _friends; //dynamic array

    function addPerson(string memory _name, uint256 _age) public {
        person memory newperson = person(_name, _age);
        _friends.push(newperson);
    }

    function addMultiplePeople() public {
        // Add multiple manually
        _friends.push(person("Ali", 19));
        _friends.push(person({name: "Areeba", age: 21}));
    }

    function addPeople(person[] memory _people) public {
        for (uint256 i = 0; i < _people.length; i++) {
            _friends.push(_people[i]);
        }

        // person public myFriend = person("mariam", 20);
        // person public myFriend2 = person("zonia", 21);

        // person public friends = person({name:"mariam", age:20});
        // person public myFriend3 = person({name:"zonia", age:21});

        //person[3] public dosats; //static array of persons

        // Storage variables can't be assigned to like that outside of a function
        // because Solidity needs to manage memory/storage
        // allocation at runtime — which only happens in functions or constructors.
        // To make it dynamic we use dynamic arrays using a fixed length array,
        // that is an array with a limited number of elements.
        // constructor() {
        //     dosats[0] = person({name: "daniyal", age: 34});
        //     dosats[1] = person({name: "sara", age: 30});
        //     dosats[2] = person("mariam", 19);
        // }

        //now we are going to use dynamic array in function using push

        // function addPeople() public {
        //     _friends.push(person({name: "ali", age: 19}));
        //     _friends.push(person("areeba", 21));
        // }

        //we can also used fixed sized array as below
        // person[2] public fixed_people=[
        //     person("Mariam", 20),
        //     person({name:"Zonia",age: 21})
        // ];

        // //constructor is a special function that will be called when we create an instance of this contract.
        // constructor(){
        //     _friends[0] = person({name:"mariam", age:21});
        //     _friends[1] = person({name:"zonia", age:26});
        //     _friends[2] = person({name:"daniyal", age:34});
        // }

        // function displayingArray() public view returns (uint256[] memory) {
        //     return favouriteNumber;
        // }

        // function store(uint256 _faouriteNumber) public{
        //     myfavouriteNumber = _faouriteNumber;
        // }

        // function retrieve() public view returns(uint256){
        //     return myfavouriteNumber;
        // }
    }
}
