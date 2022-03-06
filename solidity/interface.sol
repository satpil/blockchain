// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "./count.sol";

interface ICount {
    function increment() external;
}

contract InterfaceContract {
    function inc(address _add) external {
        ICount(_add).increment();
    }
}
