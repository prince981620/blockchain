// SPDX-License-Identifier:MI2T
pragma solidity 0.8.26;

contract A {
    function doSomething() external pure{
        revert();
    }
}

contract B {
    A a = new A();
    string public status = "Not Available";

    function go() public {
        try a.doSomething(){
            status = "success";
        }catch{
            status = "failed";
        }
    }
}