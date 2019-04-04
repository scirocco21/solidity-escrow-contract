var Escrow = artifacts.require("escrow");

module.exports = function(deployer) {
    deployer.deploy(Escrow)
}