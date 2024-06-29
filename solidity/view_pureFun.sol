// SPDX-License-Identifier:MI2T
pragma solidity 0.8.26;

// deployed using 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4


// view fun -> declares that no state will be changed (read alowed but write denied)
// pure fun -> declares that no state will be changed or read ( read and write both denied)

contract ViewPure{
    uint public x = 1;

    function addX(uint y,uint z) public view returns(uint){
        // x=x+4; this statement wont run as it is changing the state variable x
        // in view function reading is allowed but not modifying
        return x+y+z;
    }

    function Addx(uint z) public pure returns(uint){
        // return x+z; gives error because this is pure function and both reading and modification 
        // is denied for pure function
        return z+10;
    }
}