pragma solidity 0.5.10;

import "@gnosis.pm/safe-contracts/contracts/GnosisSafe.sol";


/**
 * @title DharmaUpgradeMultisig
 * @notice This contract is an example of a multisig that will control the
 * Dharma upgrade manager.
 */
contract DharmaUpgradeMultisig is GnosisSafe {
  constructor(address[] memory owners, uint256 threshold) public {
    domainSeparator = keccak256(
      abi.encode(
        DOMAIN_SEPARATOR_TYPEHASH,
        address(this)
      )
    );
    setupSafe(owners, threshold, address(0), "");
  }
}