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
    
    @IBOutlet weak var computerPoints: UILabel!
    
    @IBOutlet weak var playerPoints: UILabel!
    
    @IBOutlet weak var playerImage: UIImageView!
    
    @IBOutlet weak var computerImage: UIImageView!
    
    var playerSelection = "Rock"
    
    var playerPoints2 = 0
    
    var computerSelection = "Rock"
    
    var computerPoints2 = 0
    
    var round = 1
    
    var wins = 0
    
    var ties = 0
    
    var losses = 0
    
    func update() {
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
