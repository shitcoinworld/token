pragma solidity ^0.4.24;

import "./openzeppelin-solidity/contracts/token/ERC721/ERC721Token.sol";
import "./openzeppelin-solidity/contracts/ownership/Ownable.sol";

// This is the Shitcoin World Hodler NFT Contract
// Copyright 2018, Shitcoin Inc. https://shitcoinworld.com

contract Hodler is ERC721Token("Hodler", "💩"), Ownable {
    string public baseURI = "https://api.shitcoinworld.com/hodlers/";
    address public signer;

    // data is the owner address (20 bytes) concatenated with the tokenId (12 bytes)
    function mint(bytes32 data, uint8 v, bytes32 r, bytes32 s) public {
        require(signer == ecrecover(data, v, r, s), "signature invalid");
        address owner = addressFromData(data);
        uint256 tokenId = tokenIdFromData(data);
        _mint(owner, tokenId);
    }

    function addressFromData(bytes32 data) public pure returns(address) {
        address addr;
        assembly {
            // Store data with an offset of 12 bytes from memory address 0
            mstore(0x0C, data)
            addr := mload(0x0)
        }
        return addr;
    }

    function tokenIdFromData(bytes32 data) public pure returns(uint256) {
        uint256 tokenId;
        assembly {
            // Mask out the first 20 bytes of data and assign it to token
            tokenId := and(0x0000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF, data)
        }
        return tokenId;
    }

    function tokenURI(uint256 _tokenId) public view returns (string) {
        require(_exists(_tokenId));
        return string(abi.encodePacked(baseURI, uintToString(_tokenId)));
    }

    function setBaseURI(string _newBaseURI) public onlyOwner {
        baseURI = _newBaseURI;
    }

    function setSigner(address _newSigner) public onlyOwner {
        signer = _newSigner;
    }

    function uintToString(uint i) internal pure returns (string) {
        if (i == 0) return "0";
        uint j = i;
        uint length;
        while (j != 0){
            length++;
            j /= 10;
        }
        bytes memory bstr = new bytes(length);
        uint k = length - 1;
        while (i != 0){
            bstr[k--] = byte(48 + i % 10);
            i /= 10;
        }
        return string(bstr);
    }
}