//// SPDX-License-Identifier: MIT
// pragma solidity 0.7.5;

// contract SafeMathUsage {
//     uint8 private BigNumber = 255;

//     function addOne() public {
//         BigNumber += 1;
//         //will return 0 not 256
//         //because safe math prevent overflow error
//         //overflow error can come if value increased than
//         //the capacity of variable like uint8 can store
//         //value of range 0-2^8-1, 0-255, therefore it returns 0
//         //instead of error.........
//         //not in versions above 0.8.x
//     }

//     function GetBigNumber() public view returns (uint8) {
//         return BigNumber;
//     }
// }
