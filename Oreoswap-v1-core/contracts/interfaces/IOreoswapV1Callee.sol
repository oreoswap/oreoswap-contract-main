pragma solidity >=0.5.0;

interface IOreoswapV1Callee {
    function OreoswapV1Call(address sender, uint amount0, uint amount1, bytes calldata data) external;
}
