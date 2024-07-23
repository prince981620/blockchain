// SPDX-License-Identifier:MI2T
pragma solidity 0.8.26;

contract ArrayDemo{
    uint[] public arr = [11,22,33,44,55];

    function getValues() public view returns(uint[] memory){
        return arr;
    }

    function getLength() public view returns(uint){
        return arr.length;
    }

    function pushNum(uint num) public {
        arr.push(num);
    }

    function popNum() public {
        arr.pop();
    }
    // function shift(uint index) public {
    //     for(uint i=0;i<)
    // }
    function removeFromIndex(uint index) public { //this deletes value from index and replace it by 0
        delete arr[index];
        // shift(index);
    }

}
