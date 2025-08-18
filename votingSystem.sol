// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract VotingSystem {
    struct Proposal {
        string name;
        uint256 voteCount;
        mapping(address => bool) voters;
    }

    Proposal private p;

    function canVote(address _voter) public view returns (bool) {
        return !p.voters[_voter];
    }

    function vote(address _voter) public {
        require(canVote(_voter), "Voter has already voted");
        p.voters[_voter] = true;
        p.voteCount++;
    }
}
