# 01 - Solidity Inheritance

This is a simple practice project to understand how Solidity supports inheritance between smart contracts.

## 🧠 Concepts Practiced
- Contract inheritance using `is`
- Method overriding using `virtual` and `override`
- Function visibility (`public`, `view`, `pure`)
- Storage and memory variables

## 📄 Contracts

### 🔹 `Animal.sol`
Base contract that stores a name and provides:
- `setName(string)`: set the animal's name
- `getName()`: retrieve the stored name
- `speak()`: returns a generic animal sound ("HOWW HOWW")

### 🔹 `Dog.sol`
Derived from `Animal`, adds:
- `bark()`: specific to `Dog`, returns "Woof!"
- Overrides `speak()` to return `"I am a dog and I say Woof!"`

## 🧪 Deployment
- Deployed to **Sepolia testnet** via **Remix**
- All public and pure/view functions successfully tested through the Remix UI
