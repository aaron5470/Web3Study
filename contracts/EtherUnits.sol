// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/*
Wei：最小单位，所有金额计算都以Wei为基础。
Gwei：常用单位，特别是用于表示gas价格，1 Gwei = 10^9 Wei。
Ether：基本单位，1 Ether = 10^18 Wei。
*/
contract EtherUnits {
    uint256 public oneWei=1 wei;
    bool public isOneWei=(oneWei==1);//验证1 wei是否等于1，结果应该为true


    uint256 public oneGwei=1 gwei;
    bool public isOneGwei=(oneGwei==1e9);//验证1gwei是否等于10^9 wei

    uint256 public oneEther=1 ether;
    bool public isOneEther=(oneEther==1e18);         

    function get() public view returns(bool){
        return isOneWei;
    }

}