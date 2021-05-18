pragma solidity =0.5.16;

import '@openzeppelin/contracts/token/ERC20/ERC20Detailed.sol';
import '@openzeppelin/contracts/token/ERC20/ERC20.sol';
//import "./BEP20.sol";

contract Token1 is ERC20, ERC20Detailed {
  constructor() ERC20Detailed('Token 1', 'TK1', 18) public {} 
}
