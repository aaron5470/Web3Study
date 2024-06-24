// SPDX-License-Identifier: MIT
pragma  solidity ^0.8.17;

contract NestedMapping {

    //嵌套映射（从地址到另一个映射），用于存储负责的数据
    //我理解类似于oracle的嵌套表
    //定义一个嵌套地址变量
    mapping(address=>mapping(uint256=>bool)) public nested;

    //获得嵌套映射中的指定地址和无符号整数对应的布尔值
    function get(address _addr1,uint256 i) public view returns(bool){
        return nested[_addr1][i];
    }
    
    //赋值复杂类型
    function set(address _addr1,uint256 _i,bool _boo) public  {
         nested[_addr1][_i]=_boo;
    }

    function remove(address _addr1,uint256 _i) public{
        delete nested[_addr1][_i];
    }
}