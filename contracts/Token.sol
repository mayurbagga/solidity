// SPDX-License-Identifier: UNLICENSED
pragma solidity >= 0.5.0 < 0.9.0;

contract Token{

    string public name="Hardhat Token";
    string public symbol ="HH";
    uint public totalSupply = 100000;

    address public owner;


    mapping (address => uint) blalances;

    constructor () {
        blalances[msg.sender]= totalSupply;
        owner = msg.sender;
    }
    function transfer (address to ,uint amount)  external {

        require (blalances[msg.sender]>= amount, "not enough tokens" );
        blalances[msg.sender]-=amount;
        blalances[to]+=amount;
    }
    function balanceOf(address account) external view returns(uint256){

        return blalances[account];
    }
}

