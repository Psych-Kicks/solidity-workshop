/* SPDX-License-Identifier: MIT
 Author   : Orhan YILDIRIM
 Email    : orhan_yil@msn.com
 GitHub   : @Psych-Kicks
 Medium   : @orhan_yildirim
 Twitter  : @Psych_Kicks
 */


/*
    Add allowances for external roles
*/

pragma solidity 0.8.1;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";

contract SharedWallet is Ownable {

    function isOwner() internal view returns(bool) {
        return owner() == msg.sender;
    }

    mapping(address => uint) allowance;

    function addAllowance(address _who, uint _amount) public onlyOwner {
        allowance[_who] = _amount;
    }


    modifier ownerOrAllowed(uint _amount) {
        require(isOwner() || allowance[msg.sender] >= _amount, "You are not allowed!");
        _;
    }


    function withdrawMoney(address payable _to, uint _amount) public ownerOrAllowed(_amount) {
        require(_amount <= address(this).balance, "Contract doesn't own enough money");
        if(!isOwner()) {
            reduceAllowance(msg.sender, _amount);
        }
        _to.transfer(_amount);
    }


    receive() external payable {}
}






























