// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;


/*
展示了一个简单的智能合约，
演示了如何消耗掉所有的gas并导致交易失败。以下是完整代码：

*/
contract Gas{
   uint256 public i=0;

    // 使用掉所有发送的gas会导致交易失败
    // 状态改变会被撤销
    // 消耗的gas不会被退还
   function forever() public{
     // 运行一个无限循环，直到消耗掉所有gas并导致交易失败
     while(true){
        i+=1;
     }
   }
}