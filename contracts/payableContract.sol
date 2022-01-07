// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract payableContract{
    address payable user = payable(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);

    function payEther() public payable{

    }

    function getBalance() public view returns(uint){
        return address(this).balance;
    }

    function transferEtherium() public{
        user.transfer(1 ether);
    }
}