// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20BurnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

abstract contract BRTERC20Upgradeable is ERC20Upgradeable, ERC20BurnableUpgradeable, OwnableUpgradeable {

    // function pause() public onlyOwner {
    //     _pause();
    // }

    // function unpause() public onlyOwner {
    //     _unpause();
    // }

    function _beforeTokenTransfer(address from, address to, uint256 amount)
        internal
        override
        // whenNotPaused
    {
        super._beforeTokenTransfer(from, to, amount);
    }
}