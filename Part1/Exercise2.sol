// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.12;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.1.0/contracts/token/ERC20/ERC20.sol";

contract Exercise2 is ERC20 {
    string public tokenName = "Token2";
    string public tokenSymbol = "TKN";

    constructor() ERC20(tokenName, tokenSymbol) {
        _mint(msg.sender, 1000 ether);
    }

    function mint(address account, uint256 amount) public {
        _mint(account, amount);
    }

    function changeName(string memory name) public {
        tokenName = name;
    }

    function changeSymbol(string memory symbol) public {
        tokenSymbol = symbol;
    }
}
