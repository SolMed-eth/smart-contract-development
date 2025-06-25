# 💸 FundMe Smart Contract

This is a beginner-friendly Solidity smart contract built as part of my learning journey with the [Cyfrin Updraft](https://updraft.cyfrin.io/) smart contract development course.

The `FundMe` contract allows users to send ETH with a minimum USD equivalent requirement, using Chainlink price feeds to determine real-time conversion rates. It includes owner-only withdrawal functionality and tracks individual funders.

## 🧠 What I Learned

This project helped me understand and apply several important Solidity concepts:

### ✅ Core Concepts

- **State Variables:** Declaring and storing values like `owner`, `minimumUsd`, and mappings.
- **Functions:** Public and `payable` functions like `fund()` and `withdraw()`.
- **Mappings:** Tracking how much each address has funded using `mapping(address => uint256)`.
- **Arrays:** Storing all funder addresses in an `address[]`.

### 🔒 Access Control

- **Modifiers:** Using a custom `onlyOwner` modifier to restrict sensitive actions like withdrawals.
- **Constructors:** Setting the contract owner when the contract is deployed.

### 🔗 Chainlink Integration

- **Price Feeds:** Fetching real-time ETH/USD price from Chainlink using the `AggregatorV3Interface`.
- **Interfacing External Contracts:** Understanding how to call other contract functions using interfaces.

### 🧰 Libraries

- **Custom Library:** I created a `PriceConverter` library to keep conversion logic separate and reusable.
- **Using For Syntax:** Learned to extend uint256 with functions like `.getConversionRate()` using:
  ```solidity
  using PriceConverter for uint256;

