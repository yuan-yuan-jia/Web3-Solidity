pragma solidity ^0.8.24;

contract Gas {
    unint256 public i = 0;

    function forever() public {
        // Heere we run a loop until all of the gas are spent
        // and the transaction fails
        while (true) {
            i += 1;
        }
    }
}