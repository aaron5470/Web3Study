// SPDX-License-Identifier: MIT
pragma  solidity ^0.8.17;

/*
set get 适配器的使用
*/
contract SimpleStorage {
    uint256 public num;

    function set(uint256 _num) public{
        num=_num;
    }

    function get()  public view returns(uint256){
        return num;
    }
}