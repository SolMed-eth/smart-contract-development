# FundMe Smart Contract – Cyfrin Updraft Beginner Course

This is the `FundMe.sol` project from the [Cyfrin Updraft Smart Contract Development course](https://updraft.cyfrin.io/).  
It demonstrates how to build a decentralized crowdfunding smart contract using Solidity.

---

## 📚 What I Learned

- How to use price feeds (via Chainlink Oracles) to convert ETH to USD
- How to set up state variables, mappings, modifiers, and constructors
- Best practices for gas optimization (e.g., `constant`, `immutable`)
- How to restrict access using `onlyOwner`
- Withdrawal patterns (`cheaperWithdraw()` vs regular)
- How to write a `fallback()` and `receive()` function

---

## 🧠 Contract Features

- **Minimum funding requirement**: Users must send enough ETH to meet a USD threshold
- **Track funders**: Stores addresses and amounts using arrays and mappings
- **Owner-only withdrawals**: Funds can only be withdrawn by the deployer (contract owner)
- **Price feed integration**: Chainlink Oracle used to convert ETH to USD in real-time

---

## 🛠️ Tech Stack

- Solidity (v0.8.x)
- Chainlink for price data (ETH/USD)
- Hardhat for testing and deployment
- Foundry (next version – to be ported)

---

## 🧪 Next Steps

- [ ] Migrate this to Foundry and write tests in `FundMe.t.sol`
- [ ] Add events for `Funded()` and `Withdrawn()` actions
- [ ] Add unit + integration tests
- [ ] Deploy to testnet + verify on Etherscan

---

## 🔍 Notes

The `FundMe` contract is one of the first steps in building real DeFi protocols.  
It combines basic Solidity logic with Chainlink integration, showing how to build and secure smart contracts that interact with external data.

---

📅 Built: June 2025  
🧑‍💻 Author: [@SolMed-eth](https://github.com/SolMed-eth)

