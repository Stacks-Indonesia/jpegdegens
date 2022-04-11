// SPDX-License-Identifier: Unlicense

import "hardhat/console.sol";

pragma solidity ^0.8.0;

contract Score {
    uint score;
    address owner;
    event ScoreSet(uint);
    mapping (address => uint) scoreList;

    constructor() {
        owner = msg.sender;
        score = 5;
    }

    modifier Fee(uint fee) {
        if (msg.value == fee) {
            _;
        }
    }

    modifier onlyOwner {
        if (msg.sender == owner) {
            _;
        }
    }

    function getScore() public view returns (uint) {
        return score;
    }

    function setScore(uint newScore) public Fee(100) {
        score = newScore;
        console.log(score);
        emit ScoreSet(newScore);
    }

    function getUserScore(address user) public view returns(uint) {
        return scoreList[user];
    }

    function setUserScore(address user, uint newScore) onlyOwner {
        scoreList[user] = newScore;
    }
}