
// SPDX-License-Identifier: MIT
pragma solidity 0.6.8;

interface IPriceFeed {
  function currentPrice(uint256 _targetDecimals) external view returns (uint256);
}
