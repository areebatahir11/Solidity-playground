// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Lottery {
    address[] public players;

    modifier OnlyRunContract() {
        require(players.length >= 3, "Insufficient participants");
        _;
    }

    function enterLottery() public {
        players.push(msg.sender);
    }
}
