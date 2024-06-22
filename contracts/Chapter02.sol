// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
import "hardhat/console.sol";

contract Chapter02{

    string storeMsg;
    bytes  bts1="btc";
    bytes  bts2=bts1;

    
 

    function set(string memory message) public{
        storeMsg=message;
    }

    function get() public view returns  (string memory){
        return  storeMsg;
    }

    //引用类型演示  ??
    function test01() public  {
      console.log("bts1:%s",string(bts1));
      console.log("bts2:%s",string(bts2));
      bts2[0]='e';
      bts2[1]='t';
      console.log("bts1:%s",string(bts1));
      console.log("bts2:%s",string(bts2));
    }

    //运算符
    uint8 a=5;
    uint8 b=2;
    
    //定义一个unit转string 的函数
    function uintToString(uint v) internal pure returns (string memory) {
        if (v == 0) {
            return "0";
        }
        uint maxlength = 100;
        bytes memory reversed = new bytes(maxlength);
        uint i = 0;
        while (v != 0) {
            uint remainder = v % 10;
            v = v / 10;
            reversed[i++] = bytes1(uint8(48 + remainder));
        }
        bytes memory s = new bytes(i);
        for (uint j = 0; j < i; j++) {
            s[j] = reversed[i - j - 1];
        }
        return string(s);
    }

    function test02() public view   {
        console.log("a+b=%s",uintToString(a+b));
        console.log("a-b=%s",uintToString(a-b));
        console.log("a*b=%s",uintToString(a*b));
        console.log("a/b=%s",uintToString(a/b));
        console.log("a<<b=%s",uintToString(a<<b));
        console.log("a^b=%s",uintToString(a^b));//按位异或
        console.log("~a=%s",uintToString(~a));//按位取反

        //整型移除
        uint8 c=255;
        c=c+1;
        console.log("a=%s",a);
    }

    //定义两个合约地址
    address addr = 0x690B9A9E9aa1C9dB991C7721a92d351Db4FaC990;
    address payable addr_pay = payable(0x8306300ffd616049FD7e4b0354a64Da835c1A81C);
    address addr2=addr_pay;//地址的隐式转换

    //地址类型转换成字符串类型
    function addrToString(address _addr) internal pure returns (string memory) {
        bytes32 value = bytes32(uint256(uint160(_addr)));
        bytes memory alphabet = "0123456789abcdef";
        bytes memory str = new bytes(42);
        str[0] = '0';
        str[1] = 'x';
        for (uint i = 0; i < 20; i++) {
            str[2 + i * 2] = alphabet[uint8(value[i + 12] >> 4)];
            str[3 + i * 2] = alphabet[uint8(value[i + 12] & 0x0f)];
        }
        return string(str);
    }

    function test03() public view {
      console.log(addrToString(addr2));
    }

}