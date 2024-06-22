// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract IfElse{

    //三元运算符符的使用

    function ternary(uint256 _x) public pure  returns (uint256){
        return _x<10?1:0;
    }
}