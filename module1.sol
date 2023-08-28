// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Randoms {
    uint256 public b = 8;

    function testAssert(uint256 num) public pure {
        assert(num != 0);
    }

    function divide(uint256 numr, uint256 denm) public pure returns (uint256) {
        require(numr >= denm, "Numerator must be greater than or equal to denominator");
        return numr / denm;
    }

    function mult(uint256 a) public view returns (uint256) {
        require(a > 0, "Value of 'a' must be greater than zero");
        return a * b;
    }
}
