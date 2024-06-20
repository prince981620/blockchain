// SPDX-License-Identifier:MI2T
pragma solidity 0.8.26;

// enum is a userdefined type that stores set of named/predefined values or integram constant
// enum is set so avoid repeatation
// eg. 7 days of week{sun,mon,tue..}, 12 month in year{jan,feb...},
contract enum1{
    enum FreshJuice{small,medium,large}
    FreshJuice choice;
    FreshJuice constant defaultChoice = FreshJuice.medium;

    function setLarge() public {
        choice = FreshJuice.large;
    }

    function getChoice() public view returns(FreshJuice) {
        return choice;
    }
    
    function getdefault() public pure returns(uint){
        return uint(defaultChoice);
    }

}
