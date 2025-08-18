// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

contract Depositewithdraw {
    uint256 private amount;
    event deposited(uint256 amount, address depositor);
    event withdrawed(uint256 amount, address withdrawer);

    function deposite(uint256 _a) public payable {
        amount = _a;
        emit deposited(amount, msg.sender);
    }

    function withdraw(uint256 _a) public {
        require(_a <= amount, "Insufficient balance");
        amount = amount - _a;
        if (amount == 0) {
            revert("Amount is zero");
        }
        emit withdrawed(amount, msg.sender);
    }

    function remaining_amount() public view returns (uint256) {
        return amount;
    }
}
