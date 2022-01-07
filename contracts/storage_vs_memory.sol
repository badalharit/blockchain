// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;


contract svm{
    string[] public myArray = ["Badal","Akash"];

    function triggerMemory() public view{ // No Gas
        string[] memory tempArray = myArray;
        tempArray[0] = "Badal Harit";
    }

    function triggerStorage() public { // Gas Cost
        string[] storage tempArray = myArray;
        tempArray[0] = "Badal Harit";
    }
}