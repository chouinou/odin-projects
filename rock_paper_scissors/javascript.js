const prompt = require("prompt-sync")();

let humanScore = 0 ;
let computerScore = 0 ;


function getComputerChoice() {
  const randomNumber = Math.floor(Math.random() * (3 - 1 +1) + 1);
  switch (randomNumber) {
    case 1 :
        console.log("1 = ROCK") ;
        return "ROCK"
        break ;
    case 2 :
        console.log("2 = PAPER") ;
        return "PAPER"
        break ;
    case 3 :
        console.log("3 = SCISSORS") ;
        return "SCISSORS"
        break ;
  }
}



function getHumanChoice() {
    let choice = prompt('Do you want to play rock, paper or scissors ?') ;
    choice = choice.toUpperCase() ;
    console.log(choice) ;
    return choice ;      
}

function playRound(humanChoice, computerChoice) {
    if (humanChoice === computerChoice) {
        console.log(`That's a tie. You both played ${humanChoice} !`) ;
    }
    
    else if (
    (humanChoice === 'ROCK' && computerChoice === 'SCISSORS') ||
    (humanChoice === 'SCISSORS' && computerChoice === 'PAPER') ||
    (humanChoice === 'PAPER' && computerChoice === 'ROCK') ) {
        humanScore++ ;
        console.log(humanScore) ;
        console.log(`You win. ${humanChoice} beats ${computerChoice} !`) ;
    }

    else {
        computerScore++ ;
        console.log(computerScore) ;
        console.log(`You win. ${computerChoice} beats ${humanChoice} !`) ;
    }
}

const computerChoice = getComputerChoice();
const humanChoice = getHumanChoice();


playRound(humanChoice, computerChoice);