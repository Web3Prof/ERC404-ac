Addresses to be whitelisted after deployment before adding LP:
- the contract itself
- pair address, this can be created by calling 'createPair' function from the Uniswap factory contract.
- Uniswap factory address: 0x5C69bEe701ef814a2B6a3EDD4B1652CB9cc5aA6f (should be the same on all chains)
- Uniswap V2 router address: 0x7a250d5630b4cf539739df2c5dacb4c659f2488d (should be the same on all chains)
- deployer (onwer) address: to manage token distribution

Whitelist means transfer of ERC404 from or to the whitelisted address won't involve the NFT.
