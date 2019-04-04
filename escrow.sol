pragma solidity 0.5.7;

contract Escrow {
    address public sender;
    address public receiver;
    address public constant approver = 0xabeD470Cf6aebce5530A363E0F5f8334A9A252f4;


    function deposit(address _receiver) external payable {
        require(msg.value > 0);
        sender = msg.sender;
        receiver = _receiver;
    }
}