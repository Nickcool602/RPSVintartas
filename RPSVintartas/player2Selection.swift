//
//  player2Selection.swift
//  RPSVintartas
//
//  Created by NICHOLAS VINTARTAS on 11/14/24.
//

import UIKit

class player2Selection: UIViewController {

    @IBOutlet weak var player2Image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func choiceSegment(_ sender: UISegmentedControl) {
        var choiceNum = (sender as AnyObject).selectedSegmentIndex
        if choiceNum == 0 {
            RPSMP.player2Choice = "Rock"
            player2Image.image = UIImage(named: "RockImage")
        }
        else if choiceNum == 1 {
            RPSMP.player2Choice = "Paper"
            player2Image.image = UIImage(named: "PaperImage")
        }
        else if choiceNum == 2 {
            RPSMP.player2Choice = "Scissors"
            player2Image.image = UIImage(named: "ScissorsImage")
        }

    }

}
