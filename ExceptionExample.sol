// SPDX-License-Identifier: GPL-3.0
// Author   : Orhan YILDIRIM
// Email    : orhan_yil@msn.com
// GitHub   : @Psych-Kicks
// Medium   : @orhan_yildirim
// Twitter  : @Psych_Kicks

pragma solidity ^0.6.12;

contract ExceptionExample {

    // Use require for input validation
    // Use assert for checking internal states
    // Simplicistic wallet

    mapping(address => uint) public balanceReceived;

    function receiveMoney() public payable {
        balanceReceived[msg.sender] += msg.value;
    }

    function withdrawMoney(address payable _to, uint _amount) public {
        //if(_amount <= balanceReceived[msg.sender]) {
            require(_amount <= balanceReceived[msg.sender], "Not enough funds, aborting");   
            balanceReceived[msg.sender] -= _amount;
            _to.transfer(_amount);  
        //} 
    }
}

