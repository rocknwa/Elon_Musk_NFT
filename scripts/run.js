async function main() {
  const ElonNFT = await ethers.getContractFactory("ElonNFT");
  console.log("Deploying Contract...");
  const elon = await ElonNFT.deploy();
  const txHash = elon.deployTransaction.hash;
  const txReceipt = await ethers.provider.waitForTransaction(txHash);
  console.log("Contract deployed to address:", txReceipt.contractAddress);
  console.log("Minting NFT...");
  let txn = await elon.mintNFT();
  await txn.wait();
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });

