pragma solidity ^0.5.0;


contract Adoption {
  //state variable
  address[16] public adopters;


  ///@notice Adopting a pet
  function adopt(uint petId) public returns (uint) {
    require(petId>=0 && petId<=15," Invalid ");

    adopters[petId] = msg.sender;
    return petId;
  }

  ///@notice Retrieving the Adopters
  function getAdopters() public view returns(address[16] memory){
    return adopters;
  }
}