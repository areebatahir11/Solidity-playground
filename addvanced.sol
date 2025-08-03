// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import "@openzeppelin/contracts/access/Ownable.sol";

contract Secret is Ownable{
    bytes32 public aSecret;

constructor() Ownable(msg.sender){}
    function updateAndView(bytes32 _s) public onlyOwner{
        aSecret = _s;

    }

//     contract Secret is Ownable(msg.sender){
//     bytes32 public aSecret;


//     function updateAndView(bytes32 _s) public onlyOwner{
//         aSecret = _s;

//     }
}
