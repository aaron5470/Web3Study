// SPDX-License-Identifier: MIT
pragma  solidity ^0.8.17;


/*
从地址到无符号整数（uint256）的映射在Solidity智能合约中有很多实际应用。
映射是Solidity中一种非常强大的数据结构，
用于存储和管理键值对。以下是一些常见的应用场景和它们的意义
*/
contract Mapping{
    mapping(address=>uint256) public myMap;

    function get(address _addr) public view returns(uint256){
        // // 映射总是返回一个值。如果从未设置过该值，则返回默认值（uint256的默认值是0）
        return myMap[_addr];

    }

    function set(address _addr,uint256 _i) public{
        myMap[_addr]=_i;
    } 

    function remove(address _addr) public{
        delete  myMap[_addr];
    }
}