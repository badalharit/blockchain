// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 <0.9.0;

contract students{
    struct student{
        uint roll_no;
        string name;
    }
    student public r1;

    function students_list(uint _roll_no, string memory _name) public{
        r1 = student({roll_no:_roll_no,name:_name});
    }
}