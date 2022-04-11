import "@nomiclabs/hardhat-ethers";
import { ethers } from "hardhat";
import { expect } from "chai";

describe("Hello World", () => {
  it("should return hello world", async () => {
    const HW = await ethers.getContractFactory("HelloWorld");
    const hello = await HW.deploy();

    expect(await hello.hello()).to.equal("Hello, world!");
  })
})