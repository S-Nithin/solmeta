pragma solidity 0.8.18;

contract MyToken {

    // Public variables to store token details
    string public tokenName = "MyNewToken"; // Updated token name
    string public tokenAbbrv = "MNT";       // Updated token abbreviation
    uint public totalSupply = 100;      // Updated total supply

    // Mapping to store token balances of addresses
    mapping(address => uint) public balance;

    // Mint function to create new tokens
    function mint(address _receiver, uint _value) public {
        totalSupply += _value;       // Increase the total supply
        balance[_receiver] += _value; // Increase the balance of the receiver
    }

    // Burn function to destroy tokens
    function burn(address _owner, uint _value) public {
        require(balance[_owner] >= _value, "Insufficient balance"); // Check if the owner has enough balance
        totalSupply -= _value;       // Decrease the total supply
        balance[_owner] -= _value;   // Decrease the balance of the owner
    }
}
