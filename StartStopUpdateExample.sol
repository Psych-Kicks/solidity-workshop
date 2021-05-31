// SPDX-License-Identifier: GPL-3.0
// Author   : Orhan YILDIRIM
// Email    : orhan_yil@msn.com
// GitHub   : @Psych-Kicks
// Medium   : @orhan_yildirim
// Twitter  : @Psych_Kicks

pragma solidity ^0.5.13;

contract StartStopUpdateExample {

    address public owner;
    bool public paused;

    constructor() {
        owner = msg.sender;
    }

    function sendMoney() public payable {
    
    }

    function setPaused(bool _paused) public {
        require(msg.sender == owner, "You are not the owner.:");
        paused = _paused;
    }

    function withdrawAllMoney(address payable _to) public {
        require(owner == msg.sender, "You can not withdrawAllMoney.");
        require(paused == false, "The contract is paused.");
        _to.transfer(address(this).balance);
    }

    function getBalance() public view returns(uint) {
    return address(this).balance;
        
    }

    function destroySmartContract(address payable _to) public {
        require(msg.sender == owner, "You are not the owner.");
        selfdestruct(_to);

    }
}


