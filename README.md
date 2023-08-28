# Randoms Contract

This is a Solidity smart contract that demonstrates different error handling techniques using `assert`, `revert`, and `require` functions.

## License

This contract is using the MIT License.

## Prerequisites

- Solidity ^0.8.17

## Contract Details

The `Randoms` contract provides the following functions:

### `testAssert(uint num)`

- This function demonstrates the usage of the `assert` function.
- It takes a `num` parameter and checks if it is not equal to zero using the `assert` statement.
- If the condition fails, it triggers an "Internal error" and aborts the execution.

### `divide(uint _numr, uint _denm)`

- This function demonstrates the usage of the `revert` function.
- It takes `_numrr` and `_denm` parameters and performs division.
- If the `_numr` is less than `_demn`, it reverts the transaction with a custom error message stating that the numerator should be greater than the denominator.
- If the condition is met, it returns the result of the division.

### `mult(uint a)`

- This function demonstrates the usage of the `require` function.
- It takes an `a` parameter and performs multiplication with a predefined constant `b`.
- It first checks if `a` is greater than zero using the `require` statement.
- If the condition fails, it reverts the transaction with a custom error message stating that the value of `a` should not be zero.
- If the condition is met, it returns the result of the multiplication.

## Usage

1. Make sure you have Solidity ^0.8.17 installed.
2. Compile and deploy the `Random` contract to a supported Ethereum network.
3. Interact with the deployed contract by calling the available functions and providing the required parameters.

## Author 
Anurag Bharti
