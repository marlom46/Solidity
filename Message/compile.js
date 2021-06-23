const path = require('path');
const fs = require('fs');
const solc = require('solc');

const messagePath = path.resolve(__dirname, 'contracts', 'message.sol');
const source = fs.readFileSync(messagePath, 'utf-8');

const input = {

    language: "Solidity",
    sources: {
        "message.sol": {
            content: source,
        },
    },
    settings: {
        outputSelection: {
            "*": {
                "*": ["*"],
            },
        },
    },
};

const output = JSON.stringify(solc.compile(JSON.stringify(input)));
console.log(output.contracts['message.sol']);
