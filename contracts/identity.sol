// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract Identity{
    string public name;
    uint age = 10; // state variable & unsigned integer
    uint16 public stateVar; // state variable
    int8 public myIntVar;
    uint[4] public staticArray;
    uint[] public dynamicArray;
    bytes2 public b2;
    bytes3 public b3;
    bytes public dynamicBytesArray='a';
    uint[3] public myArray;
    uint public count;
    bool flag;
    struct student{
        uint roll_no;
        string name;
    }
    student public r1;

    constructor(string memory yourName){
        name = yourName;
        age = 26;
        stateVar = 123;
        myIntVar = -127;
        staticArray = [11,12,13,14];
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

    function getter() public view returns(uint){
        return age;
    }

    function setter() public{
        age +=5;
    }

    function dynamicSetter(uint newAge) public{
        age = newAge;
    }
    
    function setName(string memory newName) public{
        name = newName;
    }

    function setArray(uint8 index, uint value) public{
        staticArray[index] = value;
    }
    
    function getStaticArrayLength() public view returns(uint){
        return staticArray.length;
    }

    function getDynamicArrayLength() public view returns(uint){
        return dynamicArray.length;
    }

    function pushElementInDynamicArray(uint item) public{
        dynamicArray.push(item);
    }

    function popElementFromDynamicArray() public{
        dynamicArray.pop();
    }

    function setBytesArrayVar() public{
        b2 = 'cf';
        b3 = 'abd';
    }

    function pushDynamicBytesArray() public {
        dynamicBytesArray.push('b');
    }

    function getDynamicBytesArray(uint i) public view returns(bytes1){
        return dynamicBytesArray[i];
    }

    function whileLoop() public{
        while(count < myArray.length){
            myArray[count] = count+1;
            count += 1;
        }
    }

    function forLoop() public{
        for(uint i = count; i < myArray.length; i++){
            myArray[count] = count+1;
            count += 1;
        }
    }

    function doWhile() public{
        do{
            myArray[count] = count+1;
            count += 1;
        }while(count < myArray.length);
    }

    function myConditions(int myVar) public pure returns(string memory){
        string memory response;

        if(myVar > 0){
            response = "Your variable hold's a (+)ve value";
        }else if(myVar < 0){
            response = "Your variable hold's a (-)ve value";
        }else{
            response = "Your variable is containing numeric zero(0)";
        }
        return response;
    }

    function checkFlag() public view returns(string memory){
        string memory response;
        flag == false ? response = "Flag is FALSE" : response = "Flag is TRUE";
        return response;
    }

    function students(uint _roll_no, string memory _name) public{
        r1 = student({roll_no:_roll_no,name:_name});
    }
}