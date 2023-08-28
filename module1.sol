// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract module1 {
    function errorhandle(uint256 a, uint256 b) public pure returns (uint256) {
        // Using require()
        require(a != 10, "a should not be ten");
        require(b != 20, "b should not be twenty");
        
        // Using revert() with additional condition
        if (a < b) {
            revert("a should be greater than or equal to b");
        }

        // Using revert() without additional condition
        if (a < 5) {
            revert("a should be greater than or equal to five");
        }

        // Using revert() with custom message
        if (b > 100) {
            revert("b should not exceed 100");
        }

        // Using assert()
        uint256 result = a - b;
        assert(result <= a && result <= b);

        return result;
    }
}
