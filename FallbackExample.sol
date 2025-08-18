// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

contract FallBackExample {
    uint256 public result;

    receive() external payable {
        result = 1;
    }

    //I don't need any parameter in receive function,
    //I don't need to write function keyword for receive function, because it is
    //one of special functions in solidity that are written in pink:)

    fallback() external payable {
        result = 2;
    }
}
