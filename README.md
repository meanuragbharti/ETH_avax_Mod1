# Error Handling 

This Solidity smart contract showcases various error handling techniques using the `assert`, `revert`, and `require` functions.

# License:
This contract is released under the MIT License.

# Prerequisites:
- Solidity ^0.8.0

## Contract Overview:

The `ErrorHandlingExample` contract includes the following functions:

### assertExample(uint256 x, uint256 y)

- This function demonstrates the application of the `assert` function.
- It takes two parameters, `x` and `y`, and asserts that `x` must be greater than `y`.
- If the assertion fails, the transaction will revert due to an internal error.
- The function returns the difference between `x` and `y` if the assertion is successful.

### revertExample(uint256 divisor)

- This function illustrates the usage of the `revert` function.
- The `divisor` parameter is used to perform a division operation.
- If `divisor` is zero, the transaction reverts with a custom error message indicating that division by zero is not allowed.
- Otherwise, the function returns the result of dividing 100 by `divisor`.

### setValue(uint256 _newValue)

- This function showcases the application of the `require` function.
- The function is restricted to only be called by the owner of the contract (`onlyOwner` modifier).
- It verifies if the provided `_newValue` is less than or equal to 1000 using the `require` statement.
- If the condition is not met, the transaction reverts with a custom error message.
- If the condition is satisfied, the contract's `value` is updated with `_newValue`.

### withdraw()

- This function allows the owner to withdraw the contract's balance.
- The function checks if the contract's balance is greater than zero using the `require` statement.
- If the balance is zero, the transaction reverts with a message indicating an empty balance.
- If the balance is positive, the function attempts to transfer the balance to the owner's address.
- If the transfer fails, the transaction reverts with an error message.

## Instructions:

1. Ensure you have Solidity ^0.8.0 installed.
2. Compile and deploy the `ErrorHandlingExample` contract to a compatible Ethereum network.
3. Interact with the deployed contract by invoking its functions and providing necessary inputs.

# Author:
Anurag Bharti
