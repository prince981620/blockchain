// SPDX-License-Identifier:MI2T
pragma solidity 0.8.26;

contract Function {
    // function to return multiple values
    function returnMultile() public pure returns(uint,bool,uint) {
        return (1,true,10);
    }
    function returnMultileWithVariableName() public pure returns(uint x,bool b,int y) {
        return (10,false,-5);
    }
    function assignValue() public pure returns(uint x,bool b,int y) {
        x= 10;
        b=true;
        y=-100;
        return (x,b,y);
    }
    function destructoring() public pure returns(uint,bool,uint,uint,uint){
        (uint i,bool j, uint k)=returnMultile();
        (uint x,,uint y)=(10,15,20);
        return (i,j,k,x,y);
    } 
}
contract SecondFunction{
    function secondContract(uint x,uint y,uint z,address a,bool b,string memory c) public pure returns(uint,uint,uint,address,bool,string memory){
        return (x,y,z,a,b,c);
    }
    
    function callFunction() external view returns(uint,uint,uint,address,bool,string memory){
        return secondContract(1, 2, 3, msg.sender, true, "hello");//msg.sender is the state variable & it is the adddress of person calliing this function
    }
    
}