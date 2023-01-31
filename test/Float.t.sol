// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

import "forge-std/Test.sol";

import "src/Float.sol";

contract TestFloat is Test {

    function testMsb() public {
        for (uint256 i = 0; i < 256; i++) {
            uint256 x = 0;
            if (i == 0) {
                assertEq(F256.msb(x), 0);
            }
            x = 1 << i;
            assertEq(F256.msb(x), i + 1);
        }
    }

    function testNlz() public {
        for (uint256 i = 0; i < 256; i++) {
            uint256 x = 0;
            if (i == 0) {
                uint256 y = F256.nlz(x);
                assertEq(y, 256);
            }
            else {
                x = 1 << i;
                uint256 y = F256.nlz(x);
                assertEq(y, 255 - i);
            }
        }
    }
}
