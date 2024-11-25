//
//  RPSMPResult.swift
//  RPSVintartas
//
//  Created by NICHOLAS VINTARTAS on 11/14/24.
//

import UIKit

class RPSMPResult: UIViewController {
    
    @IBOutlet weak var winnerLabel: UILabel!
    
    @IBOutlet weak var exLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        if RPSMP.player1Choice == "Rock" {
            if RPSMP.player2Choice == "Rock" {
                RPSMP.Winner = "Tie"
                exLabel.text = "Rock = Rock"
            }
            else if RPSMP.player2Choice == "Paper" {
                RPSMP.Winner = "Player 2 wins!"
                exLabel.text = "Rock < Paper"
            }
            else if RPSMP.player2Choice == "Scissors" {
                RPSMP.Winner = "Player 1 wins!"
                exLabel.text = "Rock > Scissors"
            }
        }
        else if RPSMP.player1Choice == "Paper" {
            if RPSMP.player2Choice == "Rock" {
                RPSMP.Winner = "Player 1 wins!"
                exLabel.text = "Paper > Rock"
            }
            else if RPSMP.player2Choice == "Paper" {
                RPSMP.Winner = "Tie"
                exLabel.text = "Paper = Paper"
            }
            else if RPSMP.player2Choice == "Scissors" {
                RPSMP.Winner = "Player 2 wins!"
                exLabel.text = "Paper < Scissors"
            }
        }
        else if RPSMP.player1Choice == "Scissors" {
            if RPSMP.player2Choice == "Rock" {
                RPSMP.Winner = "Player 2 wins!"
                exLabel.text = "Scissors < Rock"
            }
            else if RPSMP.player2Choice == "Paper" {
                RPSMP.Winner = "Player 1 wins!"
                exLabel.text = "Scissors > Paper"
            }
            else if RPSMP.player2Choice == "Scissors" {
                RPSMP.Winner = "Tie"
                exLabel.text = "Scissors = Scissors"
            }
        }
        winnerLabel.text = RPSMP.Winner
    }
}
