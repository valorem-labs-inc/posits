// SPDX-License-Identifier: MIT

/*
 * IEEE Std 754-2008 Float Smart Contract Library.  Copyright © 2023 Valorem Labs Inc.
 * Author: 0xAlcibiades <alcibiades@valorem.xyz>
 */

pragma solidity >=0.8.8;

// We use an IEEE 754-2008 binary256 format float stored as a bytes32 value.
type Float256 is bytes32;

enum class {
    signalingNaN,
    quietNaN,
    negativeInfinity,
    negativeNormal,
    negativeSubnormal,
    negativeZero,
    positiveZero,
    positiveSubnormal,
    positiveNormal,
    positiveInfinity
}

library F256 {


    // @return boolean true if the programming environment conforms to IEEE 754-2008
    function is754version2008() public pure returns (bool) {
        // Because we haven't implemented binary128, so we don't conform.
        return false;
    }

   /**
   * Convert signed 256-bit integer number into IEEE-754-2008 binary256 floating point number.
   *
   * @param x signed 256-bit integer number
   * @return y IEEE-754-2008 binary256 floating point number
   */
    function convertFromInt (int256 x) public pure returns (Float256 y) {
    }

    /**
    * Convert IEEE-754-2008 binary256 floating point number into signed 256-bit integer number.
    *
    * @param x IEEE-754-2008 binary256 floating point number
    * @return y signed 256-bit integer number
    */
    function convertToIntegerTiesToEven (Float256 x) public pure returns (int256 y) {

    }

    function msb(uint256 x) internal pure returns (uint256) {
        return 256 - nlz(x);
    }

    // TODO: There may be a slightly more optimal implementation of this in Hackers delight.
    // @return the number of leading zeros in the binary representation of x
    function nlz(uint256 x) internal pure returns (uint256) {
        if (x == 0) {
            return 256;
        }

        uint256 n = 1;

        if (x >> 128 == 0) { n += 128; x <<= 128; }
        if (x >> 192 == 0) { n += 64; x <<= 64; }
        if (x >> 224 == 0) { n += 32; x <<= 32; }
        if (x >> 240 == 0) { n += 16; x <<= 16; }
        if (x >> 248 == 0) { n += 8; x <<= 8; }
        if (x >> 252 == 0) { n += 4; x <<= 4; }
        if (x >> 254 == 0) { n += 2; x <<= 2; }

        n -= x >> 255;

        return n;
    }

    // TODO: Float nlz
}
