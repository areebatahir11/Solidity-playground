// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";


contract GiftChain is ERC721URIStorage, Ownable(msg.sender) {

    uint256 public tokenCounter;

    mapping(uint256 => string) private tokenID_metadata;

    constructor() ERC721("gift", "GFT"){
        tokenCounter = 0;
    }

    //  Mint a new NFT gift
    function mintGift(address recipient, string memory tokenURI_) public returns (uint256) {
        uint256 newTokenID = tokenCounter;
        _safeMint(recipient, newTokenID);              // Mint the NFT
        _setTokenURI(newTokenID, tokenURI_);           // Store metadata
        tokenCounter++;
        return newTokenID;
    }

   
}
