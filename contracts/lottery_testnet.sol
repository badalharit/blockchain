// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract lottery_testnet{
    address  public manager;
    address payable[] public participants;

    constructor(){
        manager = msg.sender;//Global variable to pass the constract deployer hash address
    }

    receive() external payable{
        require(msg.value == 2 ether);
        participants.push(payable(msg.sender));//It'll transfer the ETH
    }

    function getBalance() public view returns(uint){
        require(msg.sender == manager);
        return address(this).balance;
    }

    function randomParticipant() private view returns(uint){
        return uint(keccak256(abi.encodePacked(block.difficulty,block.timestamp,participants.length)));
    }

    function selectWinner() public /*returns(address)*/{
        require(msg.sender == manager);
        require(participants.length >= 3);
        uint index = randomParticipant() % participants.length;
        address payable winner;
        winner = participants[index];
        winner.transfer(getBalance() - 1 ether);
        payable(manager).transfer(1 ether);
        participants = new address payable[](0);//Restting the dynamic array for next lottery
        // return winner;
    }
}