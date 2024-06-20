//SPDX-License-Identifier:MIT

pragma solidity 0.8.26;

contract Primitive_type {
    bool public boo1 = true;
    uint8 public u8 = 4; //8 bit uint (only posistive)
    int64 public i64 = 1000000; //64 bit int value can be stored 
    uint public u256 = 1900009808098908; //default is 256 bits
    string public str = "Hello"; // to store string data
    address public addr = 0x95222290DD7278Aa3Ddd389Cc1E1d165CC4BAfe5; //used to store address 20 bytes or 160 bits
    int public minInt = type(int).min; //min value for signed int
    int public maxInt = type(int).max; //max value for unsigned int
}