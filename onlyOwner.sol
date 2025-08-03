// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import "@openzeppelin/contracts/access/Ownable.sol";

contract OnlyOwner is Ownable(msg.sender){

string public messege;
function MessageStoring(string memory _m)public onlyOwner{
    require(msg.sender==owner());
    messege=_m;
}
}