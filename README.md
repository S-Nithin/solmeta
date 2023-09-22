# MINTING AND BURNING TOKENS

This Solidity program performs the task of minting,burning and also to display the token balance. This program demonstrates the use of functions and mapping of addresses to balancee in the Solidity programming language and also the use od conditional statement. The purpose of this program is to build confidence in new coders and to make the coders understand the basics od solidity.

## Description

This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract contains mapping of addresses to balances that returns the token/coin balance. This program also contains use of functions to mint and burn tokens and it also contains a conditional statement to check the condition.This program basically contains all the basic things that are used in solidity to understand the basics.

BRIEF CODE EXPLANATION
1-The  mint function takes two parameters-  address and a value. The function then increases the total supply by that number and increases the balance of the address by that amount.


2-The  burn function takes two parameters-  address and a value. The function then decreases the total supply by that number and decreases the balance of the address by that amount.


3-The connditional statement (if ) checks if the input tokens entered by the user is lesserthan or equal to the balance of the tokens.If the condition is true then burn function takes place.


4-When the address is  passed  with the balance , the balance returns the token balance.
on clicking total balance also the token balance is showed.
## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., token.sol). Copy and paste the following code into the file:

```javascript
// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

/*
       REQUIREMENTS
    1. Your contract will have public variables that store the details about your coin (Token Name, Token Abbrv., Total Supply)
    2. Your contract will have a mapping of addresses to balances (address => uint)
    3. You will have a mint function that takes two parameters: an address and a value. 
       The function then increases the total supply by that number and increases the balance 
       of the “sender” address by that amount
    4. Your contract will have a burn function, which works the opposite of the mint function, as it will destroy tokens. 
       It will take an address and value just like the mint functions. It will then deduct the value from the total supply 
       and from the balance of the “sender”.
    5. Lastly, your burn function should have conditionals to make sure the balance of "sender" is greater than or equal 
       to the amount that is supposed to be burned.
*/

contract MyToken {

    // public variables here
    string public tokenname="monster";
    string public tokenabbrv="MTR";
    uint public totalsupply=1000;
    // mapping variable here
    mapping(address => uint)public balance;
    // mint function
    function mint(address _inpaddr, uint  _inpval)public {
      totalsupply += _inpval;
      balance[_inpaddr] += _inpval;
   }
    // burn function
   function burn(address _inpaddr, uint _inpval)public {
      if(balance[_inpaddr]>= _inpval){
        totalsupply -= _inpval;
        balance[_inpaddr] -= _inpval;
      }
     }
  }

```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compile token.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "token" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the burn or mint  function by entering the address and the input token number. Click on the "burn","mint" contract in the left-hand sidebar, and once you give the input the tokens will be burnt or minted according to the option selected .Finally, click on the "total balance" to check the balance after performing the above functions.

## Authors

Nithin S


nithin171004@gmail.com


## License
