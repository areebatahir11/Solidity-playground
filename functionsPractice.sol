// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

//PascalCase for contracts
contract MathOperations {

    uint256 public number=12;

    
    //camelCase for functions
    function CalculateSumAndProduct(uint256 a, uint256 b)
        public
        pure
        returns (uint256, uint256)
    {
        return (a + b, a * b);
    }

    function getDouble() public view returns(uint256){
        return number*2;
    }

    function changeState(uint256 _number) public{
        number=_number;
    }


}
