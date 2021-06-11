/* SPDX-License-Identifier: MIT
 Author   : Orhan YILDIRIM
 Email    : orhan_yil@msn.com
 GitHub   : @Psych-Kicks
 Medium   : @orhan_yildirim
 Twitter  : @Psych_Kicks
 */


/*
    Allow only the owner to withdraw ether
*/


pragma solidity 0.8.1;

contract SharedWallet {

    address owner; 


    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "You are not the owner.");
        _;
    }

    function withdrawMoney(address payable _to, uint _amount) public onlyOwner {
        _to.transfer(_amount);
    }

    receive() external payable {

    }
}

