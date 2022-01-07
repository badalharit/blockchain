// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract lottery{
    struct user_base{
        string name;
        string country;
    }
    mapping(string=>user_base) public user;

    function setter(string memory hashAddress, string memory cust_name, string memory cust_country) public{
        user[hashAddress] = user_base(cust_name,cust_country);
    }
}