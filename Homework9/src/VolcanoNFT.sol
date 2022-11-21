// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;


// forge install OpenZeppelin/openzeppelin-contracts
// Remember to update remappings.txt
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";


contract VolcanoNFT is ERC721 {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor() ERC721("VolcanoNFT", "VCN") {

    }

    function mint() public returns (uint256) {
    _tokenIds.increment();
    uint256 newItemId = _tokenIds.current();
    _mint(msg.sender, newItemId);
    return newItemId;
    }
   
}
