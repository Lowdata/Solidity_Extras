//SPDX-License-Identifier: UNLINCENCED
pragma solidity >= 0.8.0;
import "github/OpenZepplin/openzeppelin-contracts/contracts/token/ERC20.sol";
contract myERC20 is ERC20 {
    //Creating My personal token with limited supply 

}

contract ERC20FixedSupply is ERC20{
    constructor() public {
        _mint(msg.sender, 5000);
    }
}
