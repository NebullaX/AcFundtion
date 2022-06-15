// SPDX-License-Identifier: MIT
pragma solidity 0.6.8;


interface IController  {
  event LaunchProject(uint256 configuration, uint256 projectId, address caller);

  event LaunchFundingCycles(uint256 configuration, uint256 projectId, address caller);

  function reservedTokenBalanceOf(uint256 _projectId, uint256 _reservedRate) external view returns (uint256);

  function distributionLimitOf(
    uint256 _projectId,
    uint256 _configuration,
    address _token
  ) external view returns (uint256 distributionLimit, uint256 distributionLimitCurrency);

  function overflowAllowanceOf(
    uint256 _projectId,
    uint256 _configuration,
    address _token
  ) external view returns (uint256 overflowAllowance, uint256 overflowAllowanceCurrency);

  function totalOutstandingTokensOf(uint256 _projectId, uint256 _reservedRate) external view returns (uint256);

  function mintTokensOf(
    uint256 _projectId,
    uint256 _tokenCount,
    address _beneficiary,
    bool _preferClaimedTokens,
    bool _useReservedRate
  ) external returns (uint256 beneficiaryTokenCount);

  function burnTokensOf(
    address _holder,
    uint256 _projectId,
    uint256 _tokenCount,
    bool _preferClaimedTokens
  ) external;

}
