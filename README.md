# SimpleWallet-contract

## Overview
The **SimpleWallet** smart contract is a basic Ethereum wallet built using Solidity. It allows the contract owner to deposit and withdraw Ether securely. This contract is ideal for learning how to manage funds and permissions in a smart contract.

---

## Features
1. **Ownership Control**  
   - Only the deployer of the contract is the owner.  
   - Specific actions (like withdrawing Ether) are restricted to the owner.

2. **Deposit Ether**  
   - Anyone can deposit Ether into the wallet.  

3. **Withdraw Ether**  
   - Only the owner can withdraw Ether from the wallet.  

4. **Check Balance**  
   - Anyone can check the current balance of the contract.

---

## Functions

### **1. Constructor**  
The constructor sets the deployer of the contract (`msg.sender`) as the owner. This ensures that only the owner can access restricted functions.

---

### **2. `deposit()`**  
This function allows anyone to deposit Ether into the contract.  

- **Visibility:** `public payable`  
- **Details:**  
   - Use the `payable` keyword to accept Ether.  

---

### **3. `withdraw(uint _amount)`**  
Allows the owner to withdraw a specific amount of Ether from the contract.  

- **Visibility:** `public`  
- **Restricted:** Yes (only the owner can call this function).  
- **Conditions:**  
   - Checks if the contract has enough balance.  
   - Sends the specified `_amount` to the owner's wallet address.  

---

### **4. `getBalance()`**  
Returns the current balance of the contract.  

- **Visibility:** `public view`  
- **Details:**  
   - The balance is obtained using `address(this).balance`.

---

## Usage

1. **Deploy the Contract**  
   Deploy the `SimpleWallet` contract on an Ethereum-compatible network like Ethereum Testnet, Local Ganache, or any EVM chain.

2. **Deposit Ether**  
   - Call the `deposit()` function and send Ether to the contract.  
   - Example: Use the "value" field in Remix IDE to send Ether.

3. **Withdraw Ether**  
   - Call the `withdraw(_amount)` function.  
   - Only the owner can perform this action.  
   - Specify the `_amount` of Ether you want to withdraw.  

4. **Check Balance**  
   - Call the `getBalance()` function to see how much Ether is stored in the contract.  


