// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract CustomErrors {
    error example_error();

    function revertWitherror() public pure {
        if (false) {
            revert example_error();
        }
    }

    function ErrorWithRequire() public pure {
        require(true, "example_error");
    }
}
