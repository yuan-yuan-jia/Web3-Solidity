// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.24;

contract Loop {
    function loop() public {
        for(uint256 i = 0;i < 10;i++) {
            if (i == 3) {
                continue;
            }
            if (i == 5) {
                // Exit loop with break
                break;
            }
        }


        // while loop
        unint256 j;
        while (j < 10) {
            j++;
        }
    }
}