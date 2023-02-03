// SPDX-License-Identifier: MIT

/*
 * Posit Real Number Arithmetic Library for Solidity.
 * Copyright © 2023 Valorem Labs Inc.
 *
 * Implements a subset of the Standard for Posit Arithmetic:
 * https://posithub.org/docs/posit_standard-2.pdf
 *
 * Author: 0xAlcibiades <alcibiades@valorem.xyz>
 */

pragma solidity >=0.8.8;


type Posit256 is bytes32;

struct Quire4096 {
    bytes32[16] data;
}

library Posit {

    // The posit values are a superset of all integers 𝑖 in a range
    // −pIntMax ≤ 𝑖 ≤ pIntMax. Outside that range, integers exist
    // that cannot be expressed as a posit value without rounding
    // to a different integer; pIntMax is ⌈2^⌊4(𝑛−3)/5⌋⌉.
    // Here, n = 256, so pIntMax = 2^202.
    uint256 constant pIntMax = 6427752177035961102167848369364650410088811975131171341205504;

    // This allows for values from 2 × 10^−78297 to 5 × 10^78296
    uint256 constant es = 10;

    error NotYetImplemented();

    // Conversions between posit format and integer format

    // @return the integer-valued posit value representing x.
    function fromInt(int256 x) external pure returns (Posit256 y) {
        if (x < 0) {

        }
    }

    // @return the integer nearest to x, returns the nearest
    //         even integer if two integers are equally near.
    function toInt(Posit256 x) external pure returns (int256) {
        revert NotYetImplemented();
    }

    //
    // Basic functions of one posit value argument
    //

    // @return -x.
    function negate(Posit256 x) external pure returns (Posit256) {

        revert NotYetImplemented();
    }

    // @return negate(x) if x < 0, else x.
    function abs(Posit256 x) external pure returns (Posit256) {
        revert NotYetImplemented();
    }

    // @return a posit value: 1 if x > 0, -1 if posit < 0, or 0 if posit = 0.
    function sign(Posit256 x) external pure returns (Posit256) {
        revert NotYetImplemented();
    }

    // @return the integer-valued posit value nearest to x, returns the nearest
    //         even integer if two integers are equally near.
    function nearestInt(Posit256 x) external pure returns (Posit256) {
        revert NotYetImplemented();
    }

    // @return the smallest integer-valued posit value greater than or equal to x.
    function ceil(Posit256 x) external pure returns (Posit256) {
        revert NotYetImplemented();
    }

    // @return the largest integer-valued posit value less than or equal to x.
    function floor(Posit256 x) external pure returns (Posit256) {
        revert NotYetImplemented();
    }

    // @return the posit value of the lexographic successor of x's representation.
    function next(Posit256 x) external pure returns (Posit256) {
        revert NotYetImplemented();
    }

    // @return the posit value of the lexographic predecessor of x's representation.
    function prior(Posit256 x) external pure returns (Posit256) {
        revert NotYetImplemented();
    }

    //
    // Comparison functions of two posit value arguments
    //

    // @return true if x = y, else false.
    function compareEqual(Posit256 x, Posit256 y) external pure returns (bool) {
        revert NotYetImplemented();
    }

    // @return true if x ≠ y, else false.
    function compareNotEqual(Posit256 x, Posit256 y) external pure returns (bool) {
        revert NotYetImplemented();
    }

    // @return true if x > y, else false.
    function compareGreater(Posit256 x, Posit256 y) external pure returns (bool) {
        revert NotYetImplemented();
    }

    // @return true if x ≥ y, else false.
    function compareGreaterEqual(Posit256 x, Posit256 y) external pure returns (bool) {
        revert NotYetImplemented();
    }

    // @return true if x < y, else false.
    function compareLess(Posit256 x, Posit256 y) external pure returns (bool) {
        revert NotYetImplemented();
    }

    // @return true if x ≤ y, else false.
    function compareLessEqual(Posit256 x, Posit256 y) external pure returns (bool) {
        revert NotYetImplemented();
    }

    //
    // Arithmetic functions of two posit value arguments
    //

    // @return x + y, rounded.
    function addition(Posit256 x, Posit256 y) external pure returns (Posit256) {
        revert NotYetImplemented();
    }

    // @return x - y, rounded.
    function subtraction(Posit256 x, Posit256 y) external pure returns (Posit256) {
        revert NotYetImplemented();
    }

    // @return x × y, rounded.
    function multiplication(Posit256 x, Posit256 y) external pure returns (Posit256) {
        revert NotYetImplemented();
    }

    // @return x ÷ y, rounded.
    function division(Posit256 x, Posit256 y) external pure returns (Posit256) {
        revert NotYetImplemented();
    }

    //
    // Elementary functions of one posit value argument
    //

    // @return √x, rounded.
    function sqrt(Posit256 x) external pure returns (Posit256) {
        revert NotYetImplemented();
    }

    // @return 1 / √x, rounded.
    function rSqrt(Posit256 x) external pure returns (Posit256) {
        revert NotYetImplemented();
    }

    // @return 𝑒ˣ, rounded.
    function exp(Posit256 x) external pure returns (Posit256) {
        revert NotYetImplemented();
    }

    // @return 𝑒ˣ - 1, rounded.
    function expMinus1(Posit256 x) external pure returns (Posit256) {
        revert NotYetImplemented();
    }

    // @return 2ˣ, rounded.
    function exp2(Posit256 x) external pure returns (Posit256) {
        revert NotYetImplemented();
    }

    // @return 2ˣ - 1, rounded.
    function exp2Minus1(Posit256 x) external pure returns (Posit256) {
        revert NotYetImplemented();
    }

    // @return 10ˣ, rounded.
    function exp10(Posit256 x) external pure returns (Posit256) {
        revert NotYetImplemented();
    }

    // @return 10ˣ - 1, rounded.
    function exp10Minus1(Posit256 x) external pure returns (Posit256) {
        revert NotYetImplemented();
    }

    // @return logₑ(x), rounded.
    function log(Posit256 x) external pure returns (Posit256) {
        revert NotYetImplemented();
    }

    // @return logₑ(x + 1), rounded.
    function logPlus1(Posit256 x) external pure returns (Posit256) {
        revert NotYetImplemented();
    }

    // @return log₂(x), rounded.
    function log2(Posit256 x) external pure returns (Posit256) {
        revert NotYetImplemented();
    }

    // @return log₂(x + 1), rounded.
    function log2Plus1(Posit256 x) external pure returns (Posit256) {
        revert NotYetImplemented();
    }

    // @return log₁₀(x), rounded.
    function log10(Posit256 x) external pure returns (Posit256) {
        revert NotYetImplemented();
    }

    // @return log₁₀(x + 1), rounded.
    function log10Plus1(Posit256 x) external pure returns (Posit256) {
        revert NotYetImplemented();
    }

    // @return sin(x), rounded.
    function sin(Posit256 x) external pure returns (Posit256) {
        revert NotYetImplemented();
    }

    // @return sinPi(𝜋 × posit), rounded.
    function sinPi(Posit256 x) external pure returns (Posit256) {
        revert NotYetImplemented();
    }

    // @return cos(x), rounded.
    function cos(Posit256 x) external pure returns (Posit256) {
        revert NotYetImplemented();
    }

    // @return cosPi(𝜋 × x), rounded.
    function cosPi(Posit256 x) external pure returns (Posit256) {
        revert NotYetImplemented();
    }

    // @return tan(x), rounded.
    function tan(Posit256 x) external pure returns (Posit256) {
        revert NotYetImplemented();
    }

    // @return tanPi(𝜋 × posit), rounded.
    function tanPi(Posit256 x) external pure returns (Posit256) {
        revert NotYetImplemented();
    }

    // @return arcsin(x), rounded.
    // abs(arcSin) ≤ (𝜋/2, rounded)
    function arcSin(Posit256 x) external pure returns (Posit256) {
        revert NotYetImplemented();
    }

    // @return arcsin(x) / 𝜋, rounded.
    // abs(arcSinPi) ≤ 1/2.
    function arcSinPi(Posit256 x) external pure returns (Posit256) {
        revert NotYetImplemented();
    }

    // @return arccos(x), rounded.
    // 0 ≤ arcCos ≤ (𝜋, rounded).
    function arcCos(Posit256 x) external pure returns (Posit256) {
        revert NotYetImplemented();
    }

    // @return arccos(x) / 𝜋, rounded.
    // 0 ≤ arcCosPi ≤ 1.
    function arcCosPi(Posit256 x) external pure returns (Posit256) {
        revert NotYetImplemented();
    }

    // @return arctan(x), rounded.
    // abs(arcTan) ≤ (𝜋/2, rounded).
    function arcTan(Posit256 x) external pure returns (Posit256) {
        revert NotYetImplemented();
    }

    // @return arctan(x) / 𝜋, rounded.
    // abs(arcTanPi) ≤ 1/2.
    function arcTanPi(Posit256 x) external pure returns (Posit256) {
        revert NotYetImplemented();
    }

    // @return sinh(x), rounded.
    function sinH(Posit256 x) external pure returns (Posit256) {
        revert NotYetImplemented();
    }

    // @return cosh(x), rounded.
    function cosH(Posit256 x) external pure returns (Posit256) {
        revert NotYetImplemented();
    }

    // @return tanh(x), rounded.
    function tanH(Posit256 x) external pure returns (Posit256) {
        revert NotYetImplemented();
    }

    // @return arcsinh(x), rounded.
    function arcSinH(Posit256 x) external pure returns (Posit256) {
        revert NotYetImplemented();
    }

    // @return arccosh(x), rounded.
    // 0 ≤ arcCosH ≤ (rounded).
    function arcCosH(Posit256 x) external pure returns (Posit256) {
        revert NotYetImplemented();
    }

    // @return arctanh(x), rounded.
    function arcTanH(Posit256 x) external pure returns (Posit256) {
        revert NotYetImplemented();
    }

    //
    // Elementary functions of two posit value arguments
    //

    // @return √x²+y², rounded.
    function hypot(Posit256 x, Posit256 y) external pure returns (Posit256) {
        revert NotYetImplemented();
    }

    // @return xʸ, rounded.
    function pow(Posit256 x, Posit256 y) external pure returns (Posit256) {
        revert NotYetImplemented();
    }

    // @return the argument t of x + y, -𝜋 ≤ t ≤ 𝜋, rounded.
    function arcTan2(Posit256 x, Posit256 y) external pure returns (Posit256) {
        revert NotYetImplemented();
    }

    // @return arcTan2(y, x) / 𝜋, rounded.
    function arcTan2Pi(Posit256 x, Posit256 y) external pure returns (Posit256) {
        revert NotYetImplemented();
    }

    // @return x × y × z, rounded.
    function fMM(Posit256 x, Posit256 y, Posit256 z) external pure returns (Posit256) {
        revert NotYetImplemented();
    }

    //
    // Functions of one posit value argument and one integer argument
    //

    // @return (1 + x)ʸ, rounded.
    function compound(Posit256 x, int256 y) external pure returns (Posit256) {
        revert NotYetImplemented();
    }

    // @return x¹/ʸ, rounded.
    // If y is even, rootN ≥ 0.
    function rootN(Posit256 x, int256 y) external pure returns (Posit256) {
        revert NotYetImplemented();
    }

    //
    // Functions involving quire value arguments
    //

    // TODO(Will these very large memory based quires ever be needed?)

    // @return x converted to quire format.
    function pToQ(Posit256 x) external pure returns (Quire4096 memory) {
        revert NotYetImplemented();
    }

    // @return -x.
    function qNegate(Quire4096 memory x) external pure returns (Quire4096 memory) {
        revert NotYetImplemented();
    }

    // @return qNegate(x) if x < 0, else x.
    function qAbs(Quire4096 memory x) external pure returns (Quire4096 memory) {
        revert NotYetImplemented();
    }

    // @return x + y.
    function qAddP(Quire4096 memory x, Posit256 y) external pure returns (Quire4096 memory) {
        revert NotYetImplemented();
    }

    // @return x - y.
    function qSubP(Quire4096 memory x, Posit256 y) external pure returns (Quire4096 memory) {
        revert NotYetImplemented();
    }

    // @return x + y.
    function qAddQ(Quire4096 memory x, Quire4096 memory y) external pure returns (Quire4096 memory) {
        revert NotYetImplemented();
    }

    // @return x - y.
    function qSubQ(Quire4096 memory x, Quire4096 memory y) external pure returns (Quire4096 memory) {
        revert NotYetImplemented();
    }

    // @return x + (y × z).
    function qMulAdd(Quire4096 memory x, Posit256 y, Posit256 z) external pure returns (Quire4096 memory) {
        revert NotYetImplemented();
    }

    // @return x - (y × z).
    function qMulSub(Quire4096 memory x, Posit256 y, Posit256 z) external pure returns (Quire4096 memory) {
        revert NotYetImplemented();
    }

    // @return x rounded to posit format.
    function qToP(Quire4096 memory x) external pure returns (Posit256) {
        revert NotYetImplemented();
    }

}
