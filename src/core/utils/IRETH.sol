// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.24;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

 /**
  * @title RETH interface
  */
interface IRETH is IERC20 {
    function deposit() payable external;

    function withdraw(uint256 amount) external;
}