pragma solidity ^0.8.24;

contract Counter {
    unint256 public count;

    function get() public view returns(unint256) {
        return count;
    }


    function inc() public {
        count += 1;
    }

    function dec() public {
        count -= 1;
    }
}