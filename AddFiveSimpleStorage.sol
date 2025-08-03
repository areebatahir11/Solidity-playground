// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import {SimpleStorage} from "./Simplestorage.sol";

contract AddFiveSimpleStorage is SimpleStorage {
    function sayHello() public pure returns (string memory) {
        return "hello world";
    }

    function store(uint256 _newnumber) public override {
        myFavoriteNumber = _newnumber + 5;
    }
}
