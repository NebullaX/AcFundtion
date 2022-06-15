// SPDX-License-Identifier: MIT
pragma solidity 0.6.8;

import './IPriceFeed.sol';

interface IPrices {
  event AddFeed(uint256 indexed currency, uint256 indexed base, IPriceFeed feed);

  function feedFor(uint256 _currency, uint256 _base) external view returns (IPriceFeed);

  function priceFor(
    uint256 _currency,
    uint256 _base,
    uint256 _decimals
  ) external view returns (uint256);

  function addFeedFor(
    uint256 _currency,
    uint256 _base
  ) external;
}
