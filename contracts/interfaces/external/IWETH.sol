// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity =0.7.6;

import '@openzeppelin/contracts/token/ERC20/IERC20.sol';

/// @title Interface for WETH
interface IWETH is IERC20 {
    /// @notice Deposit eth to get wrapped eth
    function deposit() external payable;

    /// @notice Withdraw wrapped eth to get eth
    function withdraw(uint256) external;
}
