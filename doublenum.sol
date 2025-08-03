// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

contract Calculator {
    uint256 num;

    function storeNumber(uint256 _num) public {
        num = _num;
    }

    function double() public view returns (uint256) {
        return num * 2;
    }

    function reset() public {
        num = 0;
        return;
    }
}
