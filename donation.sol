// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

// Task:
// Create a Donation contract:

// Anyone can donate ETH to any address.

// Donor can withdraw their own donation.

// Use ReentrancyGuard to protect withdraw().

// Emit an event Donated(address indexed from, address indexed to, uint amount) on donation.
contract Donation is ReentrancyGuard {
    uint256 private _donateAmount;

    mapping(address => uint256) public addressToDonation;

    function ReceiveETH(address from, uint256 amount) public payable {
        _donateAmount += amount;
        addressToDonation[from] = _donateAmount;
    }

    event withdraw(address indexed from, uint256 amount);

    function Withdraw(uint256 amount) public nonReentrant {
        _donateAmount -= amount;
        addressToDonation[msg.sender] = _donateAmount;
        emit withdraw(msg.sender, amount);
    }
}
