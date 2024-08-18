// SPDX-License-Identifier: Unlicensed

pragma solidity >=0.7.0;

contract Paystream {
    event transactions(address indexed from, address to, uint amount, string symbol);
    event recipeints(address indexed reecipientOf, address recipient, string recipientName);

    function _transfer(address payable _to, string memory symbol) public payable {
        _to.transfer(msg.value);
        emit transactions(msg.sender, _to, msg.value, symbol);
    }

    function saveTx(address from, address to, uint amount, string memory symbol) public {
        emit transactions(from, to, amount, symbol);
    }

    function addRecipient(address recipient, string memory name) public {
        emit recipeints(msg.sender, recipient, name);
    } 
}

// 0x0580021050478b4FBE6AB82aDAfF1CE29480e18A - Sepolia
// 0xA07BAcfB5300C6Aa88B016ae31cB30059156D475 - Arbitrium sepolia
// 0x8586B707cFAE3617b136Ed1f4215D60107646C93 - BNB Testnet