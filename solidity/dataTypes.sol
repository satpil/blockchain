// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract DataType {
    uint256 public myInt;

    // internal function cannot access outside
    function internalCall(uint256 val) internal returns (uint256) {
        return myInt = val;
    }

    // external function cannot access inside the contract

    function externalCall(uint256 val) external returns (uint256) {
        return myInt = val;
    }

    // private function cannot access outside or its inherit

    function privateCall(uint256 val) private returns (uint256) {
        return myInt = val;
    }

    // public function can access anywhere

    function publicCall(uint256 val) public returns (uint256) {
        return myInt = val;
    }

    // pure function cannot modified the state or red the state

    function publicPureCall(uint256 val) public pure returns (uint256) {
        return val * 2;
    }

    // pure function cannot modified the state but red the state

    function publicViewCall(uint256 val) public view returns (uint256) {
        return myInt + val;
    }
}
