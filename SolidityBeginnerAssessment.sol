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
