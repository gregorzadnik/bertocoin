pragma solidity >=0.4.22 <0.9.0;

contract BertoCoin {
	string public name = 'Berto Coin';
	string public symbol = 'BRTC';
	string public standard = 'Berto Coin v1.0';
	uint256 public totalSupply;

	event Transfer(
			address indexed _from,
			address indexed _to,
			uint256 _value
	);

	mapping(address => uint256) public balanceOf;
	constructor (uint256 _initialSupply) public {
		// allocate the initial supply
		balanceOf[msg.sender] = _initialSupply;
		totalSupply = _initialSupply;
	}

	function transfer(address _to, uint256 _value) public returns (bool success){
		require(balanceOf[msg.sender] >= _value);

		balanceOf[msg.sender] -= _value;
		balanceOf[_to] += _value;
		emit Transfer(msg.sender, _to, _value);

		return true;
	}
}
