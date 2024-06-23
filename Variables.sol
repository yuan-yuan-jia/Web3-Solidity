// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.24;

contract Variables {
    
    // State variables are stored on the blockchain
    string public text = "Hello";
    unint256 public num = 123;

    function doSomething() public {
        // Local variables are not saved to the blockchain
        unint256 i = 456;
        
        // some global variables
        uint256 timestamp = block.timestamp; // current block timestamp
        address sender = msg.sender; // address of the caller

    }
}
