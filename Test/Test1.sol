pragma solidity >=0.4.0 <0.8.0;

contract Storage {
    uint256 number;

    function store(uint256 num) public {
        number = num;
    }

    function retrieve() public returns (uint256){
        return number;
    }
}

library SafeMath {
    function add(uint256 a, uint256 b) internal returns (uint256) {
        uint256 c = a + b;
        return c;
    }
}


contract TestStorage is Storage {
    using SafeMath for uint256;

    function plus() public returns (uint256){
        return number.add(1);
    }
}

