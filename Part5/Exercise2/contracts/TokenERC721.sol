// SPDX-License-Identifier: MIT
pragma solidity 0.8.12;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract TokenERC721 is ERC721 {
    uint256 nftCount;

    constructor() ERC721("NFT", "NFT") {}

    function _mintNFT(address to) public {
        _mint(to, nftCount);
        nftCount++;
    }
}
