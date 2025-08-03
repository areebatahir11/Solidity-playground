// SPDX-License-Identifier: MIT
// // pragma solidity ^0.8.19;

// // import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

// // contract SolidityToken is ERC20 {

// //     constructor() ERC20("solidityToken", "SLD") {
// //         _mint(msg.sender,1000 * 10^18);
// //     }
// // }


// pragma solidity ^0.8.19;

// import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
// import "@openzeppelin/contracts/access/Ownable.sol";

// contract DreamCollectible is ERC721, Ownable {
//     constructor() ERC721("DreamCollectible", "DREAM")Ownable(msg.sender) {}

//     function mintNFT(address to, uint256 tokenId) public onlyOwner {
//         _mint(to, tokenId);
//     }
// }



// pragma solidity ^0.8.19;

// import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
// import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

// contract PriceAwareToken is ERC20 {
//     AggregatorV3Interface public priceFeed;

//     constructor(
//         string memory name,
//         string memory symbol,
//         address pricefeed
//     ) ERC20(name, symbol) {
//         pricefeed=priceFeed;
//     }

//     function getLatestPrice() public view returns (int) {
//         (, int price,,,) = priceFeed.latestRoundData();
//         return price;
//     }
// }


pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";

contract GameItems is ERC1155 {
   constructor() ERC1155("https://game.com/api/item/{id}.json") {

    //mint require to, id, amount, data......
    _mint(msg.sender, 0, 100, ""); // Item ID 0
    _mint(msg.sender, 1, 200, ""); // Item ID 1
}

}
