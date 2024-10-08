// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.26;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import "./IERC20Errors.sol";

/**
 * @title Fair&Free ERC20 Token Standard Interface
 */
interface IFFERC20 is IERC20, IERC20Errors {
    function name() external view returns (string memory);

    function symbol() external view returns (string memory);

    function launcher() external view returns (address);

    function generator() external view returns (address);

    function transferable() external view returns (bool);

    function enableTransfer() external;

    function mint(address _account, uint256 _amount) external;


    error PermissionDenied();

    error InsufficientBalance();

    error AlreadyEnableTransfer();
}