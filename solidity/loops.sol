// SPDX-License-Identifier:MI2T
pragma solidity 0.8.26;

contract loop{
    uint[] data;
    uint8 j = 0;

    function loop1() public returns(uint[] memory){ //memory keyword is used becuase
        while(j<20){                                //by default remix cannot guess how much memory
            j++;                                    //this dynamic array will take so memory keyword is used to dynamically allocate memory at runtime
            data.push(j);
        }
        return data;
    }
}