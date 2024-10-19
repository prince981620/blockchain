pragma solidity 0.8.26;

constract ConstructorDemo {
    uint public num;
    constructor(uint _num){ // only get called one time when contract is deployed
        num = _num;
    }
}