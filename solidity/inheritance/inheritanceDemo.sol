// SPDX-License-Identifier:MI2T
pragma solidity 0.8.26;

contract Computer {
    function compute() public pure returns(string memory){
        return "computing....";
    }
    function show() public pure virtual returns(string memory){ //it can be override later
        return "is a concept";
    }
}
contract Laptop is Computer{                                                                         
                                                                         
    function show() public pure override returns(string memory){//override keyword 
        return "8gb, m1, 256gb";
    }
}

contract P1{
    function show() public pure virtual returns(string memory){
        return "in P1 show";
    }
}
contract P2{
    function show() public pure virtual returns(string memory){
        return "in P2 show";
    }
}
contract Child1 is P1,P2{
    function show() public pure override(P1,P2)  returns(string memory){
        return "in child show";
    }
}
contract Child2 is P1,P2{
    function show() public pure override(P1,P2)  returns(string memory){
        return super.show(); // gives preference from right to left -> P2 show gets selected
    } 
}