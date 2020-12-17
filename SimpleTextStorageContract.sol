pragma solidity >=0.7.0 <0.8.0;
pragma experimental ABIEncoderV2;

import "./Owner.sol";

contract MyTexts is Owner {
    string[] MyTexts;
    
    function addText(string memory _newText) public isOwner {
        MyTexts.push(_newText);
    }
    
    function readTexts() public view returns (string[] memory) {
        return MyTexts;
    }
    
}