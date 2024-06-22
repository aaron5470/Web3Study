// SPDX-License-Identifier: MIT
pragma  solidity ^0.8.17;

contract Loop{

    //for循环和 while循环
    function loop() public pure {
        for(uint256 i=1;i<10;i++){
            if(i==3){
                continue ;
            }

            if(i==5){
                break;
            }
        }

        uint256 j;
        while (j<10){
            j++;
        }
    }
}