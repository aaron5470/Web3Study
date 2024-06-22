// SPDX-License-Identifier: MIT
pragma  solidity ^0.8.17;

contract Primitives {
   bool public boo = true; // 定义一个布尔类型变量boo，初始值为true

   //uint表示无符号整数，即非负整数
   uint8 public u8=1;//定义一个uint8的类型变量，初始值=1
   uint256 public u256=456;
   uint public u=123;//uint 是埿56的别名

   /* int256 范围是 -2 ** 255 到 2 ** 255 - 1
    int128 范围是 -2 ** 127 到 2 ** 127 - 1
    int类型允许负数
    */
    int8 public i8 =-1; // 定义一个int8类型变量i8，初始值为-1
    int256 public i256 = 456; // 定义一个int256类型变量i256，初始值为456
    int256 public i = -123; // int是int256的别名

    //定义int类型的最小值和最大值
    int256 public minInt = type(int256).min; // int256类型的最小值
    int256 public maxInt=type (int256).max;  //注意是type不是typeof

    address public addr = 0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c;

    /*
    在Solidity中，数据类型byte表示一系列字节
    Solidity提供了两种字节类型：
    - 固定大小的字节数组
    - 动态大小的字节数组
    
    在Solidity中，bytes表示一个动态数组的字节
    它是byte[]的简写
    */

    bytes1 a=0xb5;//定义一个bytes1类型变量a
    bytes1 b=0x56;

    // 默认值
    // 未赋值的变量有默认值
    bool public defaultBoo;  //false
    uint256 public defaultUint;//0
    int256 public defaultInt;//0
    address public defaultAddr;//0x0000000000000000000000000000000000000000


}