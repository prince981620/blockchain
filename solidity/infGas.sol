// SPDX-License-Identifier:MI2T
pragma solidity 0.8.26;

contract gas1{
    uint public i=0;

    function runForever() public {
        while(true){ //infine loop
            i=i+1;
        }
    }
}