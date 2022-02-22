// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract Faucet {

    function withdraw(uint withdraw_amount) public {
        require(withdraw_amount <= 100000000000000000);
        address payable sender;
        sender = payable(msg.sender);
        sender.transfer(withdraw_amount);
    }

    // function that receive ether
    fallback() external payable {}
    receive() external payable {
        // custom function code
    }
}
