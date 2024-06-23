// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.24;

contract Array {
    // Several ways to initalize an array
    uint256[] public arr;
    uint256[] public arr2 = [1,2,3];
    // Fixed sized array,all elements initialize to 0
    uint256[10] public myFixedSizeArr;

    function get(uint256 i) public view returns (uint256) {
        return arr[i];
    }

    function getArr() public view returns (uint256[] memory) {
        return arr;
    }

    function push(uint256 i) public {
        arr.push(i);
    }


    function pop() public {
        // Remove last element from array
        // This will decrease the array legth by 1
        arr.pop();
    }

    function getLength() public view returns (uint256) {
        return arr.length;
    }

    function remove(uint256 index) public {
        // Delete does not change the array length
        // It resets the value at index to it's default value
        // in this case 0
        delete arr[index];
    }

    function examples() external {
        // create array in memory,
        // only fixed size can be created
        uint256[] memory a = new uint256[](5);
    }
}