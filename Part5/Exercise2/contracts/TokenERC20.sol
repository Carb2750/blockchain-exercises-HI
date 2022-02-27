// SPDX-License-Identifier: MIT
pragma solidity 0.8.12;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

import "./TokenERC721.sol";

contract TokenERC20 is ERC20 {
    TokenERC721 public nft;

    constructor(address tokenERC721Adress) ERC20("Token", "TKN") {
        nft = TokenERC721(tokenERC721Adress);
    }

    function mint() public {
        _mint(msg.sender, 1);
    }

    function _afterTokenTransfer(
        address,
        address to,
        uint256
    ) internal override {
        nft._mintNFT(to);
    }
}
