// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import { PriceConverter } from "./PriceConverter.sol";

contract FundMe {
    using PriceConverter for uint256;

    uint256 public minimumUsd = 5 * 1e18;
    address public owner;
    mapping(address => uint256) public addressToAmountFunded;
    address[] public funders;

    constructor() {
        owner = msg.sender;
    }

    function fund() public payable {
        require(msg.value.getConversionRate() >= minimumUsd, "Didn't send enough ETH!");
        funders.push(msg.sender);
        addressToAmountFunded[msg.sender] += msg.value;
    }

    function withdraw() public onlyOwner {
        for (uint256 i = 0; i < funders.length; i++) {
            address funder = funders[i];
            addressToAmountFunded[funder] = 0;
        }

        funders = new address[](0);

        (bool success, ) = payable(msg.sender).call{value: address(this).balance}("");
        require(success, "Call failed");
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not the owner!");
        _;
    }
}

