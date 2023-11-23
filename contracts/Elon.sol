// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "hardhat/console.sol";

contract ElonNFT is ERC721URIStorage {

    //Counters.Counter private _tokenIds -- replaced with below
    uint private _tokenIds;

    constructor() ERC721("ElonMusk", "MUSK") {}

    function mintNFT() public returns (uint256) {
        // _tokenIds.increment() -- replaced with below
        _tokenIds++;
        //uint256 newItemId = _tokenIds.current(); -- replaced with below
        uint newItemId = _tokenIds;
        _mint(msg.sender, newItemId);
        _setTokenURI(newItemId, "https://aquamarine-rare-firefly-756.mypinata.cloud/ipfs/Qmb4ew7W9mwmYXC3njPT4P5FUEsLcA3Pjpw75Jq55BdwrG?_gl=1*gymsul*_ga*MTAwMDc2OTU1Mi4xNzAwNjUzMDUx*_ga_5RMPXG14TE*MTcwMDc0MjY0MS4zLjEuMTcwMDc0NTkxMC42MC4wLjA.");
        console.log(
            "The NFT ID %s has been minted to %s",
            newItemId,
            msg.sender
        );
        return newItemId;
    }
}
