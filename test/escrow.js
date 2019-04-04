const Escrow = artifacts.require('../../contracts/escrow.sol');

contract('Escrow', function (accounts) {

    it("sets up contract", async function() {
        const contract = await Escrow.deployed();
        const approver = await contract.approver.call();
        assert.equal(approver, 0xabeD470Cf6aebce5530A363E0F5f8334A9A252f4, "No match")
    })
})