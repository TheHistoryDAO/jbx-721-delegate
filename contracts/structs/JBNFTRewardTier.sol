// SPDX-License-Identifier: MIT
pragma solidity 0.8.6;

/**
  @member contributionFloor The minimum contribution to qualify for this tier.
  @member remainingQuantity Remaining number of tokens in this tier. Together with idCeiling this enables for consecutive, increasing token ids to be issued to contributors.
  @member initialQuantity The initial `remainingAllowance` value when the tier was set.
  @member votingUnits The amount of voting significance to give this tier compared to others.
  @memver reservedRate The rate at which reserved tokens can be minted, out of MAX_RESERVED_RATE.
  @member tokenUri The URI to use for each token within the tier.
*/
struct JBNFTRewardTier {
  uint128 contributionFloor;
  uint48 remainingQuantity;
  uint48 initialQuantity;
  uint16 votingUnits;
  uint16 reservedRate;
  bytes32 tokenUri;
}
