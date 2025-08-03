// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

// mapping(address => mapping(uint => uint)) public contributions;
// Each user can make multiple contributions per round.

// Write a function contribute(uint roundId, uint amount)

// Write a function viewContribution(address user, uint roundId)
contract Contribute {
    mapping(address => mapping(uint256 => uint256)) public contributions;

    function contributionOfPerson(uint256 roundID, uint256 amount) public {
        contributions[msg.sender][roundID]=amount;
    }

    function viewContribution(uint roundID)
        public
        view
        returns (uint256)
    {
        return contributions[msg.sender][roundID];
    }
}
