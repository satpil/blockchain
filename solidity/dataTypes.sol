pragma solidity ^0.8.7;

contract myVariable {

    // Integer
    uint256 public myint;

    function setInt(uint _myInt) public {
        myint = _myInt;
    }

    //Boolean
    bool public myBool;

    function setBool(bool _myBool) public {
        myBool = _myBool;
    }

    //address
    address public myAddress;

    function setAddress(address _myAddress) public {
        myAddress = _myAddress;
    }

    function getBalanceof() public view returns(uint){
       return myAddress.balance;
    }

    //string
    string public myString;

    function setString(string memory _mystring) public {
        myString = _mystring;
    }
}