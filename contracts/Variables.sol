// SPDX-License-Identifier: MIT
pragma  solidity ^0.8.17;

contract Variables{
    //状态变量存储在区块链上
    string public texst="hello";
    uint256 public num=123;//定义一个无符号整数类型的状态变量num

    function doSomething() public pure returns (uint){
        //局部变量不会保存在区块链上
        uint256 i = 456;
        //uint256 timestamp=block.timestamp; //当前区块的时间戳
        //address sender=msg.sender;//调用者的地址
        return i;
    }
}