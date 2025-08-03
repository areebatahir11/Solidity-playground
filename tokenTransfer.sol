// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;
// 🔸 Q4: Token Transfer Log
// Task:
// Simulate a token transfer system:

// Users can transfer tokens (just numbers, no ERC20 needed).

// Emit a Transfer event with from, to, and amount.


contract TransferLog{
    event TokenTransfer(address indexed from_, address indexed to_, uint256 amount);

    function EmittingEvent(address receiver) public{
    emit TokenTransfer(msg.sender, receiver,11);
    }
}