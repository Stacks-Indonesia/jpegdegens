// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract HelloWorld {
  constructor() {

  }
  function hello() public pure returns (string memory) {
    return "Hello, world!";
  }
}
