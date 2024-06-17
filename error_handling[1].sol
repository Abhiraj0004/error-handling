// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract myToken {
    constructor() {
        owner = msg.sender;
    }

    // public variables here
    string public tokenName = "Abhiraj";
    string public tokenAbbry = "Abhi"; 
    uint public totalSupply = 0;
    address public owner;

    // emits events
    event mint(address indexed to, uint amount);
    event burn(address indexed to, uint amount);
    event Transfer(address indexed from, address indexed to, uint amount);

    //errors
    error InsufficientBalance(uint balance, uint withdrawalAmount);

    // mapping variable here
    mapping(address => uint256) public balances;

    //modifiers
    modifier onlyowner {
        assert(msg.sender == owner);
        _;
    }

    // mint function
    function Mint(address _address, uint _value) public onlyowner {
        totalSupply += _value;
        balances[_address] += _value;
        emit mint(_address, _value);
    }

    // burn function
    function Burn(address _address, uint _value) public onlyowner {
        if (balances[_address] < _value) {
            revert InsufficientBalance({balance: balances[_address],withdrawalAmount: _value});
        } else {
            totalSupply -= _value;
            balances[_address] -= _value;
            emit burn(_address, _value);
        }
    }

    function transfer(address _reciver, uint256 _value) public {
        require(
            balances[msg.sender] >= _value,
            "Account balance must be greater then transfered value!"
        );
        balances[msg.sender] -= _value;
        balances[_reciver] += _value;
        emit Transfer(msg.sender, _reciver, _value);
        }
}