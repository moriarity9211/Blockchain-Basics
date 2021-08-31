pragma solidity ^0.7.4;

contract SimpleMappingExample{
    
    
   //  mapping(key_type => value_type) myMapping;  // syntex key type mapped to value tyepe;
   mapping(uint => bool) public myMapping;   // key uint to value bool by default false hota hai bool  , key_type can be anytype ,, 
   
   function SetValue(uint _index) public {
       myMapping[_index] = true;   // setting values 
   }
   
   mapping(address => bool) public myAddMapping;
   
   function setMyAddressTrue() public{
       myAddMapping[msg.sender] = true;  //  only the owner of contract can change values of mapping so u don't need to put extra required function 
   }
}