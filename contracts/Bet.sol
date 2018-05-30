pragma solidity ^0.4.17;

contract Bet {
    address public creator;
    uint public minimumBet;
    address[] public homeTeamBetters;
    address[] public awayTeamBetters;
    
    constructor(uint minBet) public {
        creator = msg.sender;
        minimumBet = minBet;
    }
    
    function placeBet(uint teamToBetOn) public payable{
        require(msg.value > minimumBet);
        if (teamToBetOn == 0){
            homeTeamBetters.push(msg.sender);
        }
        else if(teamToBetOn == 1) {
            awayTeamBetters.push(msg.sender);
        }
    }
}