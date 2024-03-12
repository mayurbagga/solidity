// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract FunctionSelector {

    function getSelector(string calldata _func)
        external
        pure
        returns (bytes4)
    {
        return bytes4(keccak256(bytes(_func)));
    }
}
