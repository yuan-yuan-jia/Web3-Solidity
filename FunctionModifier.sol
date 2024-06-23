// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.24;

contract FunctionModifier {
    // we will use these variables to demostrate how to use
    // modifiers
    address public owner;
    uint256 public x = 10;
    bool public locked;

    constructor() {
        // Set the transaction sender as the owner of the contact
        owner = msg.sender;
    }

    // Modifier to check that the caller is the owner of the contract
    modifier onlyOwner() {
        require(msg.sender == owner,"Not owner");
        // Underscore is a special character only used 
        // inside a function modifier and it tells Solidity to
        // execute the rest of the code
        _;
    }
    // Modifiers can take inputs.This modifier checks that the address passed in 
    // is not the zero address
    modifier validAddress(address _addr) {
        require(_addr != address(0),"Not valid address");
        _;
    }

    function changeOwner(address _newOwner) public onlyOwner validAddress(_newOwner) {
        owner = _newOwner;
    }

    //Modifier can be called before and / or after a function.
    // This modifier prevents a function from being called while
    // it is still executing
    modifier noReentrancy() {
        require(!locked,"No reentrancy");
        locked = true;
        _;
        locked = false;
    }

    funcation decrement(uint256 i) public noReentrancy {
        x -= i;
        if (i > 1) {
            decrement(i - 1);
        }
    }
}