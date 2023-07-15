# Solidity ETH PROOF: Beginner Course

This is a simple Solidity application to create a token. This is not the typical way to create a token, but this short program explains the fundamental syntax and capabilities of the Solidity programming language.

 ## Description
 
This software is a simple contract written in Solidity, a programming language used on the Ethereum network to generate smart contracts. The contact has public variables, mapping variables, a mint function, and a burn function.

## Getting Started

### Executing program

   To run this program, you can use Remix, an online Solidity IDE, which can be found at https://remix.ethereum.org/.

   Create a new file on the Remix website by clicking the "+" symbol in the left-hand sidebar.
   Save the file with a .sol extension (e.g., MyToken.sol). Copy and paste the following code into the file:

// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyTokenAssessment {

    // public variables here
           string public tokenName = "POWERCOIN";
           string public tokenAbrev = "PWRCN";
           uint public supply = 0;

    // mapping variable here
            mapping(address => uint) public blnc;

    // mint function
            function mint (address adr, uint val) public {
                supply += val;
                blnc[adr] += val;
            }
    // burn function
            function burn(address adr, uint val) public {
                if(blnc[adr]>= val){
                    supply -= val;
                    blnc[adr] -= val;
                }
            }
}

   To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. 
   Make sure the "compiler" option is set to it's compatible version, and then click on the "Compile MyToken.sol" button.

   After the code is compiled, deploy the contract by clicking on the "Deploy & Run Transaction" tab right under the "Solidity Compiler" tab.
   Select the "MyTokenAssessment" contract from the dropdown menu, and then click on the "Deploy" button.

   Once the contract is deployed, you can interact with it by clicking the dropdown menu of "MyTokenAssessment" right under the Deployed Contracts.
   Copy the account above the gas limit, click the mint function, and paste the account in the address textbox.
You can type any value you want,but for example, you can type 5000. Once the account is pasted and the value is set, click the transact button.

   To see the balance, click the blnc button, paste the account and click the call button.
   You can also click the supply button, to see the initial supply. Click the tokenAbrev to see "PWRCN". Click the tokenName button to see the "POWERCOIN".

   Click the burn function, and paste the account in the address textbox.
You can type any value you want to burn,but for example, you can type 2500. Once the account is pasted and the value is set, click the transact button.
After that click the call button at the balance to update the supply and the balance.

## Author
Myca M. Lim
Contact info: 422003897@ntc.edu.ph

##License

This project is licensed under the MIT License - see the LICENSE.md file for details






