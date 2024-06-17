# project functions and error
First in all open remix application for compile code solidity ethereum blockchain.

This is a basic token contract written in Solidity for the Ethereum blockchain. It includes the following features:
 contract my token and then use construction in this code and sender the owner msg. 
 
Public Variables: tokenName: The name of the token. tokenAbbrev: The abbreviation of the token. totalSupply: The total supply of the token. And public the address of owner.

emits events: Events are used to record data on the blockchain,which programmer keeping an eye on the blockchain can access off-blockchain. they are used three recorded data
1.mint: emmited the new token mint.these parameter to and amount.
2.burn: emmited the new token burn.these parameter from and amount.
3.transfer:emmited the new token transfer.these parameter to, from, and, amount.this is sending the token, receving the token and transfer the token number.

Errors: In Solidity, the issue you are referring to is a custom error. error keyword:defined this keyword type if solidity.
Insufficient Balance:this is similiar function name and component name of custom error. An Insufficient Balance of addresses to their corresponding token balances and withdrawal the amount uint.

Mapping: balances: A mapping of addresses to their corresponding token balances and adreess greater than unit.

modiffier:Modifiers in Solidity are used to change the behaviour of functions declaratively.I am used the modifier onlyowner.
write the Functionality contract assert msg.sender.

Functions:

mint: write the function mint and place the address and unit values and public onlyowner. then, Increases the total supply of the token by the specified amount. Increases the balance of the specified address by the specified amount.And used emit keyword are used trigger event place the address and value.

burn: write the function burn and place the address and unit values and public onlyowner .Used else keyword then Decreases the total supply of the token by the specified amount. Decreases the balance of the specified address by the specified amount.And used emit keyword are used trigger event place the address and value. Ensures that the balance of the specified address is greater than or equal to the amount to be burned.And used the Functionality revert InsufficientBalance place the address, balance, withdrawal amount and value.

 transfer: write the function transfer and place the address reciver and uint value.require Functionality and msg sender balances is greater than as equal value Account balance must be greater then transfered value!. Decrease the balance of the specifier msg.sender specifier amount.Increase the balance of the specifier msg.sender specifier amount..And used emit keyword are used trigger event place the msg.sender, reciver and value.      

 compile the code solidity compiler pragma solidity 0.8.18then goto deploy&run transaction and deploy the code.

 ## Deployment 
 To use this contract, you can deploy it on the Ethereum blockchain and then use the mint and burn functions to manage the token supply and balance through
 Functionality
Contract successfully uses require()
Contract successfully uses assert() 
Contract successfully uses revert() statements.

## License
[MIT](https://choosealicense.com/licenses/mit/)
