//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract GameItem is ERC721 {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;
    
    constructor() public ERC721("GameItem", "ITM") public {

        function mint(string memory tokenUrI)  public returns (uint256) {
            _tokenIds.increment();

            uint256 newItemId = _tokenIds.current();
            _mint(player, newItemId);
            _setTokenURI(newItemId, tokenURI);

            return newItemId;
            }
        function totalSupply() public view returns(uint256){
            return _tokenIds.current();
        }
    }

contract RealEstate {

}
