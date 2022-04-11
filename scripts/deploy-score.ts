import _ from "@nomiclabs/hardhat-ethers";
import  { ethers } from "hardhat";

async function deploy(){
    const C = await ethers.getContractFactory("Score");
    const counter = await C.deploy();
    await counter.setScore(1);
    console.log(await counter.getScore());
}

deploy()