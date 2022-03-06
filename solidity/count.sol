// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract Count{
    uint public count;

    function increment() external {
        count++;
    }
}