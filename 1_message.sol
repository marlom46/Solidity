// SPDX-License-Identifier: GPL-3.0

//To run this contract:
// i. copy/upload this file to remix
// ii. set compiler version = 0.8.4, compile
// iii. run using the JavaScript VM environment

pragma solidity >=0.8.4;

contract Inbox {
    string public message;

    constructor(string memory _initialMessage) {
        message = _initialMessage;
    }

    function setMessage(string memory _newMessage) public {
        message = _newMessage;
    }
}
