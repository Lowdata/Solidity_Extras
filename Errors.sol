//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

//require revert assert
contract Error{
    function testRequire(uint _i) public pure {
        require(_i <= 10, "i>10" );
    }
    //equivalent functionality using revrt

    function TestRevert(uint _i) public pure{
        if(_i>10){
            revert("i>10");
        }

        //assert is used to check the statements which are always true
        //and we get a gas refund if we get an error due to assert

        function testAssert() public view{
            assert(num==143);
        }

        //we can make custom error to save gas
        error MyError();
        function Test(uint _i) public pure {
            if(_i>20){
                revert MyError();
            }
        }
    }
}