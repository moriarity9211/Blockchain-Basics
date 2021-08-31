pragma solidity ^0.7.4;

contract MappingStructExample{
    
    mapping(address => uint) public balanceRecived;
    
    
    function getBalance() public view returns(uint){
        return address(this).balance;
    }
    
    
    function sendMoney() public payable{   // payable so that u can send money
        balanceRecived[msg.sender] += msg.value;
    }
    
    
    function withdrawAllMoney(address payable _to) public {
        
        uint balanceToSend = balanceRecived[msg.sender];
        balanceRecived[msg.sender] = 0;
        _to.transfer(address(this).balance);
    }
}