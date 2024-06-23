// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.24;

contract Function {
    // Funcations can return multiple values
    function returnMany() public pure returns (uint256,bool,uint256) {
        return (1,true,2);
    }

    // Return values can be named
    function named() public pure returns (uint256 x,bool b,uint256 y) {
        return (1,true,2);
    }

    // Return values can be assigned to their name
    // In this case the return statement can be ommited
    function assigned() public pure returns (uint256 x,bool b,uint256 y) {
        x = 1;
        b = true;
        y = 2;
    }

    // Use destructuring assignment when calling another 
    // funcation that returns multiple values.
    funcation destructuringAssignments() public pure returns (uint256,bool,unint256,uint256,uint256) {
        (uint256 i,bool b,uint256 j) = returnMany();
        // Values can be left out
        (uint256 x,,uint256 y) = (4,5,6);

        return (i,b,j,x,y);
    }


    // Can not use mapp for either input or output
    // Can user array for input
    funcation arrayInput(uint256[] memory _arr) public {

    }

    // Can use array for output
    uint256[] public arr;
    funcation arrayOutput() public view returns (uint256[] memory) {
        return arr;
    }


}


// Call function with key-value inputs
contract XYZ {
    function someFuncWithManyInputs(
        uint256 x,
        uint256 y,
        uint256 z,
        address a,
        bool b,
        string memory c
    ) public pure returns (uint256) {

    }



    function callFunc() external pure returns (uint256) {
        return someFuncWithManyInputs(
            1,
            2,
            3,
            address(0),
            true,
            "c"
        );
    }
}