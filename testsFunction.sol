// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;
contract tectContract {
    string public name;
    address public add;
    mapping(address => string) public addressToName;

    function setName(string memory _name) public {
        addressToName[msg.sender] = _name;
    }

    function getName() public view returns (string memory) {
        return addressToName[msg.sender];
    }

    function getAddress() public view returns (address) {
        return msg.sender;
    }
}
