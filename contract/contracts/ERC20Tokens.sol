// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

// ehterで表すのは分かりづらくなるのでやめる, 桁をconstで用意する
contract USDCToken is ERC20 {
    constructor() ERC20("USDC Token", "USDC") {
        _mint(msg.sender, 10000 ether);
    }

    function faucet(address recipient, uint256 amount) external {
        _mint(recipient, amount);
    }
}

contract JOEToken is ERC20 {
    constructor() ERC20("JOE Token", "JOE") {
        _mint(msg.sender, 10000 ether);
    }

    function faucet(address recipient, uint256 amount) external {
        _mint(recipient, amount);
    }
}
