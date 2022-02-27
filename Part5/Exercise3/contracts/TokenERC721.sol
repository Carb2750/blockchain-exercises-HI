// SPDX-License-Identifier: MIT
pragma solidity 0.8.12;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

import "./TokenERC20.sol";

contract TokenERC721 is ERC721 {
    TokenERC20 public token;
    uint256 nftCount;

    constructor(address tokenERC20Address) ERC721("NFT", "NFT") {
        token = TokenERC20(tokenERC20Address);
    }

    function _mintNFT(address to) public {
        _mint(to, nftCount);
        token.mint(to);
        nftCount++;
    }
}
