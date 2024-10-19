// SPDX-License-Identifier:MI2T
pragma solidity 0.8.26;

contract Account {

    mapping(address => uint) balance;
    address owner;

    constructor(){
        owner = msg.sender;
    }

    function addBalance(uint amt) public {
        require(msg.sender == owner,"stay in your limit"); //remianig gas is refunded to user
        uint a = 5;
        uint b = 4;
        uint c = a+b;
        assert(c == 9); // same as require but assert is uded for internal checking->takes entire gas
        balance[msg.sender] += amt;
    }

    function checkBalance() public view returns(uint){
        return balance[msg.sender];
    }

    function transfer(address to,uint amt) public {
        // if(balance[msg.sender] < amt){
        //     revert("you dont have enough balance");
        // }

        require(msg.sender != to,"cant transfer balance to youshelf");
        require(balance[msg.sender] > amt,"Insufficient balance"); // true then proceed forward

        balance[msg.sender] -= amt;
        balance[to] += amt;
    }
}