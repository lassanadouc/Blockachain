pragma solidity 0.5.16;
 contract EthereumSession{

     string[] public names_A_to_F; 
     address public allowed_account = msg.sender; 
     
      

     function setName(string memory _id) public  {  
         require(msg.sender == allowed_account);
         names_A_to_F.push(_id);
        
     }
     function getindex() public view returns (uint) {
        
         return names_A_to_F.length;
     }
     function getLastName(uint _i) public view returns (string memory) {
              return names_A_to_F[_i];
              
    
     }
 }