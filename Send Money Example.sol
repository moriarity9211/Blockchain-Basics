pragma solidity ^0.7.4;


contract sendMoneyExample{
    
    uint public balanceRecieved;
    
    
    
    function receiveMoney() public payable{
        balanceRecieved += msg.value;
    }
    
    
    function getBalance() public view returns(uint){
        return address(this).balance;
    }
    
    
    function withdrawMoney() public{
        address payable to = msg.sender;
        
        to.transfer(this.getBalance());
    }
    
    function withdrawMoneyTp(address payable _to) public{
        _to.transfer(this.getBalance());
    }
    
}       