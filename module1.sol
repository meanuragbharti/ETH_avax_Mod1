// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Randoms {
    uint256 public b = 8;

    function testAssert(uint256 num) public pure {
        assert(num != 0);
    }

    function divide(uint256 numr, uint256 denm) public pure returns (uint256) {
        if(_numr<_denm){
           
            revert("please provide numerator greater than denomenator");
            
        }
        return _numr/_denm;
    }

    function mult(uint256 a) public view returns (uint256) {
        require(a > 0, "Value of 'a' must be greater than zero");
        return a * b;
    }
}
