// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Animal{
    string name;

    function setName(string memory _name) public {
        name = _name;
    }
    function speak() public pure virtual  returns (string memory){
        return "HOWW HOWW";
    }
    function getName() public view returns(string memory)
    {
        return name;
    }
}
contract Dog is Animal{
    function bark() public pure returns (string memory  ){
        return "Woof!";
    }
    function speak() public pure override returns (string memory){
        return "I am a dog and I say Woof!";
    }
}
