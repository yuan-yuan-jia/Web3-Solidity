// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.24;

contract SimpleStorage {
    
    uint256 public num;

    // Send a transaction to write to a state variable
    function set(unint256 _num) public {
        num = _num;
    }


    // Read state variable without sending a transaction
    function get() public view returns (unint256) {
        return num;
    }

}