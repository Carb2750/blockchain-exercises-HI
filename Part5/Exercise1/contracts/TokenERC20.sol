// SPDX-License-Identifier: MIT
pragma solidity 0.8.12;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

import "./TokenERC721.sol";

contract TokenERC20 is ERC20 {
    TokenERC721 public nft;

    constructor(address tokenERC721Adress) ERC20("Token", "TKN") {
        nft = TokenERC721(tokenERC721Adress);
    }

    function mint(uint256 nftId) public {
        nft.burn(nftId);
        _mint(msg.sender, 1);
    }
}
