// SPDX-License-Identifier: MIT
pragma solidity 0.6.8;


interface IPrices {
  event AddFeed(uint256 indexed currency, uint256 indexed base);

  function feedFor(uint256 _currency, uint256 _base) external view returns (address);

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
