// SPDX-License-Identifier:MI2T
pragma solidity 0.8.26;

contract forLoop {
    uint[] data;

    function forLoopfun() public returns(uint[] memory){
        for(uint i=0;i<69;i++){
            data.push(i);
        }
        return data;
    }
}