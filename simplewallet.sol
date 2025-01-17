// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract SimpleWallet {
    // Address of the owner (the deployer of the contract)
    address public owner;

    // Constructor to set the deployer as the owner
    constructor() {
        owner = msg.sender;
    }

    // Modifier to allow only the owner to perform certain actions
    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can perform this action");
        _; 
    }

    // Function to deposit Ether into the contract
    function deposit() public payable {
        
    }

    // Function to withdraw Ether from the contract (only owner can withdraw)
    function withdraw(uint _amount) public onlyOwner {
        require(address(this).balance >= _amount, "Insufficient balance in the wallet");
        payable(msg.sender).transfer(_amount);
    }

    // Function to check the balance of the contract
    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}