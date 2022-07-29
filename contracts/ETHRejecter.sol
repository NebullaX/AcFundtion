//SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.6.8;

interface IAuctionModified {
    function createBid(uint256 tokenId, uint256 amount) external payable;
}

contract ETHRejecter {

    function relayBid(address auction, uint256 tokenId,  uint256 amount) external payable {
        IAuctionModified(auction).createBid{value: amount}(tokenId, amount);
    }

    receive() external payable {
        assert(1 == 2);
    }
}
