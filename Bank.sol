// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

contract Bank {
    uint256 public balances;
    address public addr;

    mapping(address => uint256) public AddressToBalances;

    function deposite(uint256 eth) public {
        balances = balances + eth;
        AddressToBalances[addr] = balances;
    }

    function checkBalance(address _addr) public view returns (uint256) {
        return AddressToBalances[_addr];
    }

    function withdraw(uint256 amount)public{
        balances = balances - amount;  // Balance after withdrawal
    }
}
