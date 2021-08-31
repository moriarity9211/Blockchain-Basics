pragma solidity ^0.5.13;

contract workWithVariable{
    uint256 public myUnit;    /* all declared varibel have default value like 0, false */
    
    
    function setMyUint(uint _myUnit) public{
        myUnit = _myUnit;   
    }
    
    bool public myBool;  /* by default its false */
    
    function setMyBool(bool _myBool) public{
        myBool = _myBool;
    }
    
    
    
    uint8 public myUint8;     /* be carefull like it goes from 0-255 in increament and decrement */
    function increamentUint() public{
        myUint8++;
    }
    
    function decreamentUint() public{
        myUint8--;
    }
    
    
    
    address public myAddress;
    function setAddress(address _myAdd) public{    /* to set the address and then get info about it by defautl its 0 */
        myAddress = _myAdd;
    }
    
    function getBalanceOfAddress() public view returns(uint){   /* to get the balance of that setaddress by default it's 0 */
        return myAddress.balance;
    }
    
    
    string public myString = "Hello world";   /* you can not that much easy to play with string because it cost gas u can store hash of 
                                               you can store it as hash or in memory */ 
    function setMyString(string memory _myString) public{   /* memory is where you want to store that for string and reference we use meory */
        myString = _myString;
    }
    
    
    
    
}

