// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

contract Animal {
    address public owner;

    modifier OnlyOwner() {
        require(owner == msg.sender, "Invalid owner");
        _;
    }

    function makeSound() public pure virtual returns (string memory) {
        return "Any Sound!";
    }
}

contract Dog is Animal {
    function makeSound() public pure override returns (string memory) {
        return "Bark!";
    }
}

contract Cat is Animal {
    function makeSound() public pure override returns (string memory) {
        return "Meoww!";
    }
}
