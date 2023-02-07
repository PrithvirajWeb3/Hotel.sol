pragma solidity ^0.6.0;


contract MyHotel   {
    
    
address payable public owner;
    
uint public RoomInterested;
    
string public RoomStatus;
    
string public AfterSuccessfulPaymentStatus;
    
string public HotelInfo = "The hotel has 4 rooms"
    
" Room 101 costs 2 ether per night and has a pool view"
    
" Room 201 costs 4 ether per night and has a tennis court view"
    
" Room 301 costs 6 ether per night and has a Valley View"
    
" Room 401 costs 8 ether per night and has a balcony";
    
enum Status { Occupied, Unoccupied }
    
Status Room1;
    
Status Room2;
    
Status Room3;
    
Status Room4;
    
uint public Money;
    
    
constructor() public {
        
owner = msg.sender;
        
Room1 = Status.Unoccupied;
        
Room2 = Status.Unoccupied;
        
Room3 = Status.Unoccupied;
        
Room4 = Status.Unoccupied;
        
}
        
        
function UserInput(uint _Room) public returns(uint) {
        
RoomInterested = _Room;
        
}
        
       
receive() external payable {
        
Money = msg.value;
        
        
if(Money == 2 ether) {
            
require(Room1 == Status.Unoccupied, "Room 101 is Unavailable");
            
owner.transfer(msg.value);
            
Room1 = Status.Occupied;
            
AfterSuccessfulPaymentStatus = "You have successfully booked room 101";
        
}
        
         
if(Money == 4 ether) {
            
require(Room2 == Status.Unoccupied, "Room 201 is Unavailable");
            
owner.transfer(msg.value);
            
Room2 = Status.Occupied;
            
AfterSuccessfulPaymentStatus = "You have successfully booked room 201";
        
}
        
         
if(Money == 6 ether) {
            
require(Room3 == Status.Unoccupied, "Room 301 is Unavailable");
            
owner.transfer(msg.value);
            
Room3 = Status.Occupied;
            
AfterSuccessfulPaymentStatus = "You have successfully booked room 301";
        
}
        
         
if(Money == 8 ether) {
            
require(Room4 == Status.Unoccupied, "Room 401 is Unavailable");
            
owner.transfer(msg.value);
            
Room4 = Status.Occupied;
            
AfterSuccessfulPaymentStatus = "You have successfully booked room 401";
         
}
    
}
       
       
function StupidReturn() public {
        
if(RoomInterested == 101) {
            
if(Room1 == Status.Unoccupied) {
            
RoomStatus = "The room 101 is currently available";
            
}
            
else {
                
RoomStatus = "The room 101 is currently occupied";
            
}
            
}
            
            
if(RoomInterested == 201) {
            
if(Room2 == Status.Unoccupied) {
            
RoomStatus = "The room 201 is currently available";
            
}
            
else {
                
RoomStatus = "The room 201 is currently occupied";
            
}
            
}
            
            
if(RoomInterested == 301) {
            
if(Room3 == Status.Unoccupied) {
            
RoomStatus = "The room 301 is currently available";
            
}
            
else {
                
RoomStatus = "The room 301 is currently occupied";
            
}
            
}
            
            
if(RoomInterested == 401) {
            
if(Room4 == Status.Unoccupied) {
            
RoomStatus = "The room 401 is currently available";
            
}
            
else {
                
RoomStatus = "The room 401 is currently occupied";
            
}
            
}
        
} 
    
    

}