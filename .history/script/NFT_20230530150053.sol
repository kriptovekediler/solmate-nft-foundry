// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "solmate/tokens/ERC721.sol";
import "openzeppelin-contracts/contracts/utils/Strings.sol";
import "openzeppelin-contracts/contracts/access/Ownable.sol";

contract NFT is ERC721, Ownable {
    using Strings for uint256;
    string public baseURI;
    uint256 public constant MAX_SUPPLY = 10_000;
    uint256 public currentTokenId;
    uint256 public price = 0.08 ether;

    constructor(
        string memory _name,
        string memory _symbol,
        string memory _baseURI
    ) ERC721(_name, _symbol) {
        baseURI = _baseURI;
    }
}
