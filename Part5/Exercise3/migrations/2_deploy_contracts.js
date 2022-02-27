const TokenERC20 = artifacts.require("TokenERC20");
const TokenERC721 = artifacts.require("TokenERC721");

module.exports = function (deployer) {
  deployer
    .deploy(TokenERC20)
    .then(async (instance) => {
      await deployer.deploy(TokenERC721, instance.address);
    })
    .catch((e) => console.log(e));
};
