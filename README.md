# Password Manager Smart Contract

This is a basic Ethereum smart contract written in Solidity for a simple password manager. The contract allows users to change their password and check the validity of a given password.

## Smart Contract Details

### PasswordManager Contract

- **State Variable:**
  - `password`: Stores the current password (initially set to 1234).

- **Functions:**
  1. `changePassword(uint256 prevPass, uint256 newPass)`: Allows users to change their password.
     - Requires the correct previous password.
     - Checks that the new password is a 4-digit number.
     - Updates the password if all conditions are met.
  
  2. `checkPassword(uint256 pass)`: Checks if a given password matches the current password.
     - Returns `true` if the password is correct, `false` otherwise.

