/*ErrorHandling Smart Contract Walk-through
Overview :-
The ErrorHandling contract demonstrates the use of error handling mechanisms in Solidity, including require(), assert(), and revert() statements.*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorHandling {
    uint256 public data;

    function setData(uint256 _data) public {
        require(_data > 0, "Data must be greater than zero");
        assert(_data != 999);
        if (_data == 888) {
            revert("Data cannot be 888");
        }
        data = _data;
    }

    function performOperation(uint256 value) public pure returns (uint256 result) {
        require(value > 10, "Value must be greater than 10");
        assert(value != 999);
        if (value == 888) {
            revert("Value cannot be 888");
        }
        return value * 2;
    }
}

/* 
Key Features:-
a) setData Function:
1. Uses require(_data > 0, "Data must be greater than zero") to ensure _data is a positive number.
2. Applies assert(_data != 999) to verify _data is not 999.
3. Checks _data with if (_data == 888) and reverts execution with a message if true.
4. Sets data = _data if all conditions are met.

b) performOperation Function:
1. Declares require(value > 10, "Value must be greater than 10") to enforce value to be greater than 10.
2. Utilizes assert(value != 999) to ensure value is not 999.
3. Implements if (value == 888) and reverts the transaction with a specific message upon this condition.
4. Returns value * 2 if all checks pass.

Usage:-
1. Deployment: Deploy the ErrorHandling contract on an Ethereum network using tools like Remix or Hardhat.
2. Interaction: Call setData() and performOperation() functions with appropriate arguments to observe error handling in action.
3. Error Scenarios: Test scenarios where inputs violate the requirements specified in the functions to see how each statement (require(), assert(), revert()) reacts. 
*/
