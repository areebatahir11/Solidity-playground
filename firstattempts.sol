// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

contract SimpleStorage {
    //data types :  boolean, uint, int, address, byte, string.........

    uint256 public money; //uint declares positive whole number

    // int num=-44; //declares positive and negative whole number
    // int128 num2=3088;
    //int256 num1 =67; //already declaring bits... if we don't specify 256, it can also takes it as
    //by default
    // string name="areeba";
    // address myadd= 0x6ACD41A1743a797101429689e58EF7024f46718d;
    // bytes a ="cat";
    // bytes2 b="11";
    // bytes3 c="111";

    //function_keyword function_name(data_type value) visibility{}
    //visibility is public private external internal

    function store(uint256 _money) public {
        money = _money;
    }

//view state(koi b public variable) ko read krskta ha or return krta ha modify nai krta
//pure na read krskta ha na modify krskta ha...
    function retrieve() public view returns (uint256) {
        return money;
    }

    function retrieveagain() public pure returns (uint256){
        return 1+1;
    }
}
