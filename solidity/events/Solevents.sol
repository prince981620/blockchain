// SPDX-License-Identifier:MI2T
pragma solidity 0.8.26;

// events can be used to log,index data on blockchian
// quering and indexing can be done using event(SEARCH AND FILTER LOGS)
// upto 3 parameter can be used to index 

contract EventLog{
    event Log(address indexed sender, string message);
    event Event2();

    function testEventWorking() public{
        emit Log(msg.sender, "Block chain is osm");//emit is used to triger an event
        emit Log(msg.sender, "user created successfully");
        emit Event2();
    }
}
