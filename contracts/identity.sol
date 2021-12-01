// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract Identity{
    string name;
    uint age; // unsigned integer
    uint public stateVar; // state variable

    constructor(){
        name = "Badal Harit";
        age = 26;
        stateVar = 123;
    }

    function getName() view public returns(string memory){
        return name;
    }

    function getAge() view public returns(uint){
        return age;
    }

    function setAge() public{
        age += 1;
    }
    
    function setStateVar() public{
        stateVar = 456;
    }

    function store() pure public returns(uint){
        uint fatherAge = 42; // Local variable that has stored in the stack only, not in the contract memory like state variables that'll consume gas fees
        return fatherAge;
    }
}