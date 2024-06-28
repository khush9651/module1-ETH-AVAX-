# ErrorHandling Smart Contract

## Overview

The ErrorHandling smart contract demonstrates the usage of error handling mechanisms in Solidity, including `require()`, `assert()`, and `revert()` statements.

### setData Function

The `setData` function in the `ErrorHandling` smart contract performs the following actions:

1. **Require Statement**:
   - Ensures `_data` is greater than zero using `require(_data > 0, "Data must be greater than zero")`.

2. **Assert Statement**:
   - Asserts `_data` is not equal to 999 using `assert(_data != 999)`.

3. **Revert Statement**:
   - Reverts execution and provides a custom message if `_data` equals 888 with `revert("Data cannot be 888")`.

4. **Data Assignment**:
   - Sets `data = _data` if all conditions are met.


### performOperation Function

The `performOperation` function in the `ErrorHandling` smart contract performs the following actions:

- **Require Statement**:
  - Requires `value` to be greater than 10 using `require(value > 10, "Value must be greater than 10")`.

- **Assert Statement**:
  - Asserts `value` is not equal to 999 using `assert(value != 999)`.

- **Revert Statement**:
  - Reverts execution and provides a specific message if `value` equals 888 with `revert("Value cannot be 888")`.

- **Return Value**:
  - Returns `value * 2` if all conditions are satisfied.

### Deployment and Interaction

**Deployment:**
- Deploy the `ErrorHandling` contract on an Ethereum network using tools like Remix or Hardhat.

**Interaction:**
- Call `setData()` and `performOperation()` functions with appropriate arguments to observe error handling in action.

**Error Scenarios:**
- Test scenarios where inputs violate the requirements specified in the functions to see how each statement (`require()`, `assert()`, `revert()`) reacts.

```solidity
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
```

## License

This project is licensed under the MIT License. See the LICENSE file for details
