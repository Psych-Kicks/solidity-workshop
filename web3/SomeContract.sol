/* SPDX-License-Identifier: MIT
 Author   : Orhan YILDIRIM
 Email    : orhan_yil@msn.com
 GitHub   : @Psych-Kicks
 Medium   : @orhan_yildirim
 Twitter  : @Psych_Kicks
 */

pragma solidity ^0.5.14;

contract SomeContract {
    uint public myUint = 10;

    function setUint(uint _myUint) public {
        myUint = _myUint;
    }
}