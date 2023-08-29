// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorHandlingExample {
    address public owner;
    uint256 public value;

    constructor() {
        owner = msg.sender;
        value = 100;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function");
        _;
    }

    function setValue(uint256 _newValue) external onlyOwner {
        require(_newValue <= 1000, "Value cannot exceed 1000");
        value = _newValue;
    }

    function assertExample(uint256 x, uint256 y) external pure returns (uint256) {
        // Assert that x is greater than y, otherwise, the transaction will revert.
        assert(x > y);
        return x - y;
    }

    function revertExample(uint256 divisor) external pure returns (uint256) {
        // Revert if divisor is 0, preventing division by zero.
        require(divisor != 0, "Cannot divide by zero");
        return 100 / divisor;
    }

    function withdraw() external onlyOwner {
        uint256 balance = address(this).balance;

        // Revert the transaction if the balance is zero.
        require(balance > 0, "Contract balance is empty");

        // Transfer the contract balance to the owner.
        (bool success, ) = owner.call{value: balance}("");
        require(success, "Transfer failed");
    }
}
