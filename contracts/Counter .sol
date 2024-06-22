// SPDX-License-Identifier: MIT
pragma  solidity ^0.8.17;

contract Counter{
    uint256 public count;

    function get() public view returns(uint256){
        return count;//返回当前count的值
    }

    function inc() public{
        count+=1;//将count的值加一
    }

    function dec() public{
        count-=1;
    }
}