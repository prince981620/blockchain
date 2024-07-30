// SPDX-License-Identifier: MIT
pragma solidity ^0.7.4;

contract A{
    uint public num;
    
    constructor (uint _num){
        num = _num;
    }

    modifier check(uint _num){ //can be used by multiple function for check
        if(_num >= 5){
            _; // _ a wrapper that represent the body of function
        }
    }

    function updateNum(uint _num) public check(_num){
        num += _num;
    }

    function decreaseNum(uint _num) public check(_num){
        num -= _num;
    }

    function productNUm(uint _num) public check(_num){
        num *= _num;
    }
}