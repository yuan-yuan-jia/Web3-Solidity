// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.24;

// storage variable is a state variable (stored on blockchain)
// memory variable is in memory and it exists while a function is being called
// calldata special data location that contains function arguments

contract DataLocation {
    uint256[] public arr;
    mapping(uint256 => address) map;

    struct MyStruct {
        unint256 foo;
    }

    mapping(uint256 => MyStruct) myStructs;


    function f() public {
        // call _f with state variables
        _f(arr,map,myStructs[1]);
        // get a struct from mapping
        MyStruct storage myStruct = myStructs[1];
        // create a struct in memory
        MyStruct memory myMemStruct = MyStruct(0);
        
    }

    function _f(
        uint256[] storage _arr,
        mapping(uint256 => address) storage _map,
        MyStruct storage _myStruct
    ) internal {
        // do something with storage variables
    }

    // You can return memory variables
    function g(uint256[] memory _arr) public returns (uint256[] memory) {
        // do something with meory array
    }

    function h(uint256[] calldata _arr) external {
        // do something with calldata array
    }
}