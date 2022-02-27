// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.12;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.1.0/contracts/token/ERC721/ERC721.sol";

contract Exercise1 is ERC721 {
    address owner;
    mapping(address => bool) public whitelist;

    constructor() ERC721("NFT", "NFT") {
        owner = msg.sender;
    }

    function addToWhitelist(address _address) public {
        require(msg.sender == owner, "Only the owner can add to the whitelist");
        whitelist[_address] = true;
    }

    function mintNFT(address to) public {
        require(whitelist[to] == true, "You're not on the whitelist");
        _mint(to, 0);
    }
}
