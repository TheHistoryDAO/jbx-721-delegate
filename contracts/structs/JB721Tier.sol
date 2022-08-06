// SPDX-License-Identifier: MIT
pragma solidity 0.8.6;

/**
  @member id The tier's ID.
  @member contributionFloor The minimum contribution to qualify for this tier.
  @member lockedUntil The time up to which this tier cannot be removed or paused.
  @member remainingQuantity Remaining number of tokens in this tier. Together with idCeiling this enables for consecutive, increasing token ids to be issued to contributors.
  @member initialQuantity The initial `remainingAllowance` value when the tier was set.
  @member votingUnits The amount of voting significance to give this tier compared to others.
  @member reservedRate The number of minted tokens needed in the tier to allow for minting another reserved token.
  @member reservedRateBeneficiary The beneificary of the reserved tokens for this tier.
  @member encodedIPFSUri The URI to use for each token within the tier.
*/
struct JB721Tier {
  uint256 id;
  uint80 contributionFloor;
  uint48 lockedUntil;
  uint48 remainingQuantity;
  uint48 initialQuantity;
  uint16 votingUnits;
  uint16 reservedRate;
  address reservedTokenBeneficiary;
  bytes32 encodedIPFSUri;
}
