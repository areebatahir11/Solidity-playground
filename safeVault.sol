// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

contract SafeVault is ReentrancyGuard {
    uint256 balances;

    function deposit(uint256 _amount) public payable {
        balances += _amount;
    }

    event Withdrawn(address indexed user, uint amount);

    function withdraw(uint256 _amount) public nonReentrant {
        balances -= _amount;
        emit Withdrawn(msg.sender, _amount);
    }
}