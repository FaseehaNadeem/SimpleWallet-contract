# Simple Wallet Contract

## Introduction
This is a **Simple Wallet** smart contract written in Solidity. It allows users to store, send, and receive Ether securely. This contract includes various functions to manage funds and track transactions.

## Features
- **Deposit Ether** into the contract.
- **Withdraw Ether** from the contract (only for the owner).
- **Send Ether** to other users.
- **Track Transaction History** of all deposits and withdrawals.
- **Security Measures** to prevent suspicious activities.
- **Emergency Stop Function** to disable transactions in case of an issue.
- **Fallback & Receive Functions** to handle unexpected Ether transfers.

## How It Works
### 1. Depositing Ether
Users can send Ether to the contract using the `receive` function. This automatically records the transaction in history.

### 2. Withdrawing Ether
Only the contract owner can withdraw Ether from the contract using the `withdrawFromContract` function.

### 3. Sending Ether to Others
The owner can send Ether to any address using the `transferToUserViaContract` function.

### 4. Checking Balances
- **Contract Balance:** Anyone can check how much Ether is stored in the contract.
- **Owner's Balance:** The owner’s wallet balance can also be viewed.

### 5. Emergency Mode
- The contract owner can **activate emergency mode**, which stops all transactions.
- If an emergency is declared, the owner can withdraw all funds immediately.

### 6. Suspicious Activity Tracking
- The contract keeps track of suspicious users.
- If a user attempts too many failed transactions, they are **blocked** temporarily.

### 7. Handling Unexpected Ether Transfers
- The `receive` function ensures Ether sent to the contract is recorded properly.
- The `fallback` function tracks unauthorized transactions and marks them as suspicious.

## How to Use
1. **Deploy the Contract:** The owner deploys the contract and gets control over it.
2. **Deposit Funds:** Users send Ether to the contract.
3. **Make Transactions:** The owner can send and withdraw funds as needed.
4. **Monitor Transactions:** Use the transaction history to track activities.
5. **Enable Emergency Mode (if needed):** The owner can stop all transactions in case of an issue.


