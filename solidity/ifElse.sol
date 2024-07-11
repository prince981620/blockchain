// SPDX-License-Identifier:MI2T
pragma solidity 0.8.26;

contract ifElse{
    function condition(uint x) public view returns(uint) {
        if(x>10){
            return 0;
        }
        else if(x<10){
            return 1;
        }
        else{
            return 2;
        }
    }
    function condition2(uint x) public view returns(uint){
        if(x<0){
            return 5;
        }else if(x<=10){
            return 1;
        }else if(x<=20){
            return 2;
        }else if(x<=30){
            return 3;
        }else{
            return 4;
        }
    }
}


