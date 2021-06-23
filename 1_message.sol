// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.4;

contract Inbox{
    
    string public message;
    
    constructor (string memory _initialMessage) {
        
        message = _initialMessage;
    }
    
    function setMessage (string memory _newMessage) public {
        
        message = _newMessage;
    }
    
}
