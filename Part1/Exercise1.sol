// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.12;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.1.0/contracts/token/ERC20/ERC20.sol";

contract Exercise1 is ERC20 {
    uint256 public transactionsCount;

    constructor() ERC20("Token1", "TKN") {
        _mint(msg.sender, 1000 ether);
    }

    function mint(address account, uint256 amount) public {
        _mint(account, amount);
    }

    function _afterTokenTransfer(
        address,
        address,
        uint256 amount
    ) internal override {
        if (amount > 1000 ether) {
            transactionsCount++;
        }
    }
}
