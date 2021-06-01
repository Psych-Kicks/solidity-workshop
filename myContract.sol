// SPDX-License-Identifier: MIT
// Author   : Orhan YILDIRIM
// Email    : orhan_yil@msn.com
// GitHub   : @Psych-Kicks
// Medium   : @orhan_yildirim
// Twitter  : @Psych_Kicks


pragma solidity ^0.5.13;

// ABI Array and Debugging Explain


// contract MyContract {

//     string public myString = 'hello world!';
// }

contract DebuggerExample {
    uint public myUint;

    function setMyUint(uint _myuint) public {
        myUint = _myuint;
    }
}