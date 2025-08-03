// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract KeccakkUsing {
    string public s="hello world";
    bytes32 public con = keccak256(abi.encodePacked(s));

    function ReturningBytes() public view returns (bytes32) {
        return con;
    }
}
