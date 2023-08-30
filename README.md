# Functions and Errors 

This Solidity smart contract showcases various error handling techniques using the `assert`, `revert`, and `require` functions.

# License:
This contract is released under the MIT License.

# Prerequisites:
- Solidity ^0.8.0

## Contract Overview:

The `Function and Error` contract includes the following functions:

### setValue Function:

This function allows updating the value stored in the smart contract.
It takes a parameter _newValue as input.
It uses the require() statement to enforce a condition: _newValue must be greater than the current stored value.
If the condition is not met, the function will revert with an error message.
If the condition is met, the value in the contract is updated with _newValue.

### performAssertion Function:

This function demonstrates the usage of the assert() statement.
It takes two parameters, x and y.
The function asserts that x is not equal to y.
If the assertion fails (i.e., x is equal to y), the contract execution will halt and any changes made are reverted.
If the assertion succeeds, the function performs a multiplication operation on x and y and returns the result.

### sqrt Function:

This function calculates the integer square root of a given non-negative input.
It uses a binary search algorithm to find the square root.
The function first checks if the input is negative; if it is, the function immediately reverts with an error message using the revert() statement.
If the input is zero, the function returns 0.
Otherwise, it performs a binary search between 1 and the input to find the largest integer whose square is less than or equal to the input.
Finally, the function returns the integer square root value.

## Instructions:

1. Ensure you have Solidity ^0.8.0 installed.
2. Compile and deploy the `ErrorHandlingExample` contract to a compatible Ethereum network.
3. Interact with the deployed contract by invoking its functions and providing necessary inputs.

# Author:
Anurag Bharti
