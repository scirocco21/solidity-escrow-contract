pragma solidity 0.5.7;

contract Escrow {
    address public sender;
    address payable public receiver;
    address public constant approver = 0xabeD470Cf6aebce5530A363E0F5f8334A9A252f4;


    function deposit(address payable _receiver) external payable {
        require(msg.value > 0);
        sender = msg.sender;
        receiver = _receiver;
    }

    function viewApprover() external pure returns(address) {
        return(approver);
    }

    function approve() external {
        require(msg.sender == approver);
        receiver.transfer(address(this).balance);
    }
}