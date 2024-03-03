// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "./ERC404.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

contract Tes404 is ERC404 {
    using Strings for uint256;

    constructor(address _owner) ERC404("Tes404", "TES404", 18, 10000, _owner) {
        balanceOf[_owner] = 10000 * 10 ** 18;
    }

    // set to IPFS URL that stores the metadata
    function _baseURI() internal pure override returns (string memory) {
        return
            "https://bafybeiaul4fgnopenv3pwegicktesgxre77vqaq74u4pdguyyuctkfbf5u.ipfs.nftstorage.link/";
    }

    function tokenURI(uint256 id) public view override returns (string memory) {
        ownerOf(id); // check if NFT is owned/minted

        string memory baseURI = _baseURI();
        return
            bytes(baseURI).length > 0
                ? string.concat(baseURI, ((id % 10) + 1).toString())
                : "";
    }
}
