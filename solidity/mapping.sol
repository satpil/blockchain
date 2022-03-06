// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract MappingAddress {
    mapping(address => bool) public approval;

    // get the approval
    function getApproval(address _add) public view returns (bool) {
        return approval[_add];
    }

    // set the approval
    function setApproval(address _add) external returns (bool) {
        return approval[_add] = true;
    }

    // delete the approval
    function deleteApproval(address _add) public {
        delete approval[_add];
    }
}
