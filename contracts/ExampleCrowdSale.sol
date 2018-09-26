pragma solidity ^0.4.24;

import "./Example.sol";
import "openzeppelin-solidity/contracts/crowdsale/emission/MintedCrowdsale.sol";
import "openzeppelin-solidity/contracts/crowdsale/validation/TimedCrowdsale.sol";
import "openzeppelin-solidity/contracts/crowdsale/validation/WhitelistedCrowdsale.sol";
import "openzeppelin-solidity/contracts/ownership/Ownable.sol";

contract ExampleCrowdSale is TimedCrowdsale, MintedCrowdsale, WhitelistedCrowdsale {
    constructor(uint256 _openingTime, uint256 _closingTime, uint256 _rate, address _wallet, MintableToken _token) public 
    Crowdsale(_rate, _wallet, _token) 
    TimedCrowdsale(_openingTime, _closingTime) 
    WhitelistedCrowdsale() {

    }
}
