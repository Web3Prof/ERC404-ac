const { ethers } = require("hardhat");

async function main() {
    const factory = await ethers.getContractFactory('Tes404');
    const contract = await factory.deploy("DEPLOYER ADDRESS");
    const contractAddress = await contract.getAddress();
    console.log("Address: ", contractAddress);
}

main();