// SPDX-License-Identifier: MIT
pragma  solidity ^0.8.17;

contract Immutable{
    address public immutable MY_ADDRESS;//定义一个地址类型的不可变变量
    uint256 public immutable MY_UNIT;//定义一个无符号整数类型的不可变变量

    //immutalbe类型可以在构造函数中初始化
    //定义构造函数，在合约部署时执行
    constructor(uint256 _myUnit) {
        MY_ADDRESS=msg.sender;// 在构造函数中初始化MY_ADDRESS为调用合约的地址
        MY_UNIT=_myUnit;
    }

    function getMyUnit() public view returns (uint256){
        return  MY_UNIT;
    }
}