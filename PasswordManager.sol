// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PasswordManager {
    
    uint256 password = 1234;

    function changePassword(uint256 prevPass, uint256 newPass ) public {
        require(checkPassword(prevPass),"previous password required");

        if( newPass<1000 || newPass>9999 )
            revert("password should be of 4 digits");
        
        password = newPass;
        assert(password!=prevPass);
    }


    function checkPassword(uint256 pass) public view returns(bool){
        return pass==password;
    }   

}
