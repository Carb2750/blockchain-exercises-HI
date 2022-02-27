const TokenERC20 = artifacts.require("TokenERC20");
const TokenERC721 = artifacts.require("TokenERC721");

module.exports = function (deployer) {
  deployer
    .deploy(TokenERC721)
    .then(async (instance) => {
      await deployer.deploy(TokenERC20, instance.address);
    })
    .catch((e) => console.log(e));
};
