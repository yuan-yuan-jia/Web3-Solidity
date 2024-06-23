// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.24;

contract X {
    string public name;

    constructor(string memory _name) {
        name = _name;
    }
}

contract Y {
    string public text;

    constructor(string memory _text) {
        text = _text;
    }
}


// 2种传递参数的方式去初始化父合同
//(1)
contract B is X("Input to x"),Y("Input to Y"){}
//(2)
contract C is X,Y {
    constructor(string memory _name,string memory _text) X(_name) Y(_text)
}