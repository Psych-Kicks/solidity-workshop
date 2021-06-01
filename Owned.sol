// SPDX-License-Identifier: MIT
// Author   : Orhan YILDIRIM
// Email    : orhan_yil@msn.com
// GitHub   : @Psych-Kicks
// Medium   : @orhan_yildirim
// Twitter  : @Psych_Kicks

pragma solidity ^0.5.11;
contract Owned {
    address owner;
    
    constructor() public {
        owner = msg.sender;
    }
        modifier onlyOwner {
        require(msg.sender == owner, "You are not allowed");
        _;
    }

}