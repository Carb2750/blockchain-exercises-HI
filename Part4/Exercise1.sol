// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.12;

contract Exercise1Part4 {
    function fromEtherToWei(uint256 _ether) public pure returns (uint256) {
        return _ether * 1000000000000000000;
    }

    function fromWeiToEther(uint256 _wei) public pure returns (uint256) {
        return _wei / 1000000000000000000;
    }
}
