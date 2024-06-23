// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.24;

contract Event {
    // 事件的定义
    // Indexed参数帮助你通过这个被索引的参数来过滤这个日志
    event Log(address indexed sender, string message);
    event AnotherLog();


    function test() public {
        emit Log(msg.sender,"Hello World!");
        emit Log(msg.sender,"Hello EVM!");
        emit AnotherLog();
    }
}