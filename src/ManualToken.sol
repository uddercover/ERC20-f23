//SPDDX-License-Identifier:MIT
pragma solidity ^0.8.18;

contract ERC20 {
    event Transfer(address indexed _from, address indexed _to, uint256 _value);
    event Approval(
        address indexed _owner,
        address indexed _spender,
        uint256 _value
    );

    function name() public pure returns (string memory) {}

    function symbol() public pure returns (string memory) {}

    function decimals() public pure returns (uint8) {}

    function totalSupply() public pure returns (uint256) {}

    function balanceOf(address _owner) public view returns (uint256 balance) {}

    function transferFrom(
        address _from,
        address _to,
        uint256 _value
    ) public returns (bool success) {}

    function approve(
        address _spender,
        uint256 _value
    ) public returns (bool success) {}

    function allowance(
        address _owner,
        address _spender
    ) public view returns (uint256 remaining) {}
}
