const Factory = artifacts.require('OreoswapV1Factory.sol');
const Token1 = artifacts.require('Token1');
const Token2 = artifacts.require('Token2');

module.exports = async function (deployer, _network, addresses) {
  await deployer.deploy(Factory, addresses[0]);
  const factory = await Factory.deployed();

  await deployer.deploy(Token1);
  await deployer.deploy(Token2);
  const token1 = await Token1.deployed();
  const token2 = await Token2.deployed();
  await factory.createPair(token1.address, token2.address);
};
