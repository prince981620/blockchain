// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Counter {
    uint count;

    function get() public view returns (uint) { // view -> returns data stored in blockcahin
        return count;
    }
    function inc() public { // trtansaction function
        count++;
    }
    function dec() public { //transation function
        count --;
    }
    function sum() public pure returns (uint) { // pure-> nothig to do with data of blockcain
        uint a = 10;
        uint b = 20;
        return a+b;
    }
}