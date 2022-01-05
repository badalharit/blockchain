// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract the_lottery{
    struct crypto_user{
        string name; 
        uint account_balance;
        string status;
        }
    enum user{allowed,not_allowed,wait}
    crypto_user public badal;
    
    constructor(){
        badal.name = "Badal Harit";
    }
    

    user public allocate_lottery = user.allowed;
    uint public lottery = 1000;

    function redeem() public{
        if(allocate_lottery == user.allowed){
            uint lottery_amt;
            lottery_amt = (lottery/4);
            lottery = lottery - lottery_amt;
            badal.account_balance = lottery_amt;
        }
    }
    
}