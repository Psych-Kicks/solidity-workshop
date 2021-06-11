/* SPDX-License-Identifier: MIT
 Author   : Orhan YILDIRIM
 Email    : orhan_yil@msn.com
 GitHub   : @Psych-Kicks
 Medium   : @orhan_yildirim
 Twitter  : @Psych_Kicks
 */


/*
1-  Add funds to this contract with fallback function
2-  Withdraw any address to your funds.
*/


pragma solidity 0.8.1;

contract SharedWallet {
    function withdrawMoney(address payable _to, uint _amount) public {
        _to.transfer(_amount);
    }

    receive() external payable {

    }
}

