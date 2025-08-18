// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

// import "@openzeppelin/contracts/utils/math/SafeMath.sol";

contract SafeMathUsage {
    uint8 private BigNumber = 255;

    function addOne() public {
        BigNumber = BigNumber + 1;
        // This will revert with an overflow error instead of wrapping around to 0
    }

    function GetBigNumber() public view returns (uint8) {
        return BigNumber;
    }
}
