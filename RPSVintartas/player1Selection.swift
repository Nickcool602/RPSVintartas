//
//  player1Selection.swift
//  RPSVintartas
//
//  Created by NICHOLAS VINTARTAS on 11/14/24.
//

import UIKit

class RPSMP {
    
    static var player1Choice = "Rock"
    static var player2Choice = "Rock"
    static var Winner = "Tie"
    
}

class player1Selection: UIViewController {

    @IBOutlet weak var player1Image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func choiceSegment(_ sender: UISegmentedControl) {
        var choiceNum = (sender as AnyObject).selectedSegmentIndex
        if choiceNum == 0 {
            RPSMP.player1Choice = "Rock"
            player1Image.image = UIImage(named: "RockImage")
        }
        else if choiceNum == 1 {
            RPSMP.player1Choice = "Paper"
            player1Image.image = UIImage(named: "PaperImage")
        }
        else if choiceNum == 2 {
            RPSMP.player1Choice = "Scissors"
            player1Image.image = UIImage(named: "ScissorsImage")
        }
    }
}
