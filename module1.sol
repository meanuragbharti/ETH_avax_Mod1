// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LogicDemo {
    uint256 public value;

    // Function to set the value with a requirement
    function setValue(uint256 _newValue) external {
        require(_newValue > value, "New value must be greater than the current value");
        value = _newValue;
    }

    // Function to perform an assertion
    function performAssertion(uint256 x, uint256 y) external pure returns (uint256) {
        assert(x != y); // Ensure x is not equal to y
        
        uint256 result = x * y;
        return result;
    }

    // Function to demonstrate  revert
    function sqrt(uint256 x) external pure returns (uint256) {
        // Square root calculation using binary search algorithm
        if (x <2) {
            revert("Input can't be less than 2");
        }

        if (x == 0) {
            return 0;
        }

        uint256 left = 1;
        uint256 right = x;

        while (left < right) {
            uint256 mid = (left + right) / 2;
            if (mid <= x / mid) {
                left = mid + 1;
            } else {
                right = mid;
            }
        }

        return left - 1;
    }
}
