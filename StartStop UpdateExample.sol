pragma solidity ^0.7.4;


contract startStopUpdateExample{
    
    address owner; // yeah private hai abhi 
    
    constructor() public {
        owner = msg.sender;   /* jisne deploy kiya hai wahi owner ho jayega */
    }
    
    
    bool public paused;  // By default false hoga yeah toh niche ab iska use karenge 
    
    
    function sendMoney() public payable {
        
    }
    
    
    
    function setPaused(bool _paused) public {
        require(msg.sender == owner, "This is not yout account fuck off");  // agar call karne waala owner hai toh chalega nhi toh message print gho jayega
        paused = _paused;
    }
    
    function withdrawMoney(address payable _to) public {
        require(msg.sender == owner, "THIS IS NOT YOUR ACCOUNT NOW FUCK OFF");
        require(paused == false, "contract is paused abhi kuch mat karo ");
        _to.transfer(address(this).balance);
    }
}