//
//  RPSSP.swift
//  RPSVintartas
//
//  Created by NICHOLAS VINTARTAS on 11/13/24.
//

import UIKit

class RPSSP: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var winnerLabel: UILabel!
    
    @IBOutlet weak var winsLabel: UILabel!
    
    @IBOutlet weak var tiesLabel: UILabel!
    
    @IBOutlet weak var lossesLabel: UILabel!
    
    @IBOutlet weak var playerPointsLabel: UILabel!
    
    @IBOutlet weak var computerPointsLabel: UILabel!
    
    @IBOutlet weak var playerImage: UIImageView!
    
    @IBOutlet weak var computerImage: UIImageView!
    
    var playerSelection = "Rock"
    
    var playerPoints = 0
    
    var computerSelection = "Rock"
    
    var computerPoints = 0
    
    var num = 1
    
    var round = 1
    
    var wins = 0
    
    var ties = 0
    
    var losses = 0
    
    let playerWinAlert = UIAlertController(title: "You Win!", message: "Congrats!", preferredStyle: .alert)
    let playerWinClose = UIAlertAction(title: "OK", style: .default)
    
    let tieAlert = UIAlertController(title: "Tie", message: "Better than a loss", preferredStyle: .alert)
    let tieClose = UIAlertAction(title: "OK", style: .default)
    
    let computerWinAlert = UIAlertController(title: "You lose...", message: "Unfortunate.", preferredStyle: .alert)
    let computerWinClose = UIAlertAction(title: "OK", style: .default)
    
    func reset() {
        winnerLabel.text = "Winner"
        wins = 0
        ties = 0
        losses = 0
        playerPoints = 0
        computerPoints = 0
        round = 1
        playerSelection = "Rock"
        playerImage.image = UIImage(named: "BoxImage")
        computerImage.image = UIImage(named: "BoxImage")
        update()
        scoreLabel.text = "\(playerPoints)-\(computerPoints)"
    }
    
    func update() {
        if wins >= 10 {
            round = round + 1
            wins = 0
            ties = 0
            losses = 0
            playerPoints = playerPoints + 1
        }
        else if losses >= 10 {
            round = round + 1
            wins = 0
            ties = 0
            losses = 0
            computerPoints = computerPoints + 1
        }
        playerPointsLabel.text = String(playerPoints)
        computerPointsLabel.text = String(computerPoints)
        winsLabel.text = "Wins: \(wins)"
        tiesLabel.text = "Ties: \(ties)"
        lossesLabel.text = "Losses: \(losses)"
        scoreLabel.text = "\(playerPoints)-\(computerPoints)"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        playerWinAlert.addAction(playerWinClose)
        tieAlert.addAction(tieClose)
        computerWinAlert.addAction(computerWinClose)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        reset()
        update()
    }
    
    @IBAction func choiceController(_ sender: UISegmentedControl) {
        var choiceNum = (sender as AnyObject).selectedSegmentIndex
        if choiceNum == 0 {
            playerSelection = "Rock"
        }
        else if choiceNum == 1 {
            playerSelection = "Paper"
        }
        else if choiceNum == 2 {
            playerSelection = "Scissors"
        }
    }
    
    @IBAction func shootButton(_ sender: UIButton) {
        num = Int.random(in: 1...3)
        if num == 1 {
            if playerSelection == "Rock" {
                playerImage.image = UIImage(named: "RockImage")
                ties = ties + 1
                winnerLabel.text = "Tie"
                present(tieAlert, animated: true)
            }
            else if playerSelection == "Paper" {
                playerImage.image = UIImage(named: "PaperImage")
                wins = wins + 1
                winnerLabel.text = "Paper wins"
                present(playerWinAlert, animated: true)
            }
            else if playerSelection == "Scissors" {
                playerImage.image = UIImage(named: "ScissorsImage")
                losses = losses + 1
                winnerLabel.text = "Scissors lose"
                present(computerWinAlert, animated: true)
            }
            computerImage.image = UIImage(named: "RockImage")
        }
        else if num == 2 {
            if playerSelection == "Rock" {
                playerImage.image = UIImage(named: "RockImage")
                losses = losses + 1
                winnerLabel.text = "Rock loses"
                present(computerWinAlert, animated: true)
            }
            else if playerSelection == "Paper" {
                playerImage.image = UIImage(named: "PaperImage")
                ties = ties + 1
                winnerLabel.text = "Tie"
                present(tieAlert, animated: true)
            }
            else if playerSelection == "Scissors" {
                playerImage.image = UIImage(named: "ScissorsImage")
                wins = wins + 1
                winnerLabel.text = "Scissors win"
                present(playerWinAlert, animated: true)
            }
            computerImage.image = UIImage(named: "PaperImage")
        }
        else if num == 3 {
            if playerSelection == "Rock" {
                playerImage.image = UIImage(named: "RockImage")
                wins = wins + 1
                winnerLabel.text = "Rock wins"
                present(playerWinAlert, animated: true)
            }
            else if playerSelection == "Paper" {
                playerImage.image = UIImage(named: "PaperImage")
                losses = losses + 1
                winnerLabel.text = "Paper loses"
                present(computerWinAlert, animated: true)
            }
            else if playerSelection == "Scissors" {
                playerImage.image = UIImage(named: "ScissorsImage")
                ties = ties + 1
                winnerLabel.text = "Tie"
                present(tieAlert, animated: true)
            }
            computerImage.image = UIImage(named: "ScissorsImage")
        }
        update()
    }
    
    @IBAction func resetButton(_ sender: UIButton) {
        reset()
        update()
    }
    
}
