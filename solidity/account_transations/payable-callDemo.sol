// SPDX-License-Identifier:MI2T
pragma solidity 0.8.26;

contract Payable {
    // paybale address can send and receive ethers
    address payable public owner;
    // apybale ctr can areceive ethers
    constructor() payable {
        owner = payable(msg.sender);
    }
    // this fun can receive ethers
    // eth can be deposited using remix ide ui options
    function deposit() public payable {}

    // this function cannot receove ethers
    function nonPayable() public {}

    // this function will withdraw all the eth from smart contract
    function withdraw() public payable  {
        // amount is the balance of this smart contract
        uint amount = address(this).balance; //this->address of this smart contract
        (bool success,) = owner.call{value:amount}("amount withdrawn from smart contract");
        require(success,"failed to recceive ethers");
    }
    // this function will transfer the amt of wei to adress _to
    function transfer(address _to,uint amt) public  {
        (bool success,) = _to.call{value:amt}("amount transferred");
        require(success,"amont transferred failed");
    }

    // owner/_to .call ->used to transfer ether to owner /_cal
}