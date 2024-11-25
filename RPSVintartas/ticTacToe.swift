//
//  ticTacToe.swift
//  RPSVintartas
//
//  Created by NICHOLAS VINTARTAS on 11/21/24.
//

import UIKit

class ticTacToe: UIViewController {
    
    @IBOutlet weak var _11Image: UIImageView!
    
    @IBOutlet weak var _21Image: UIImageView!
    
    @IBOutlet weak var _31Image: UIImageView!
    
    @IBOutlet weak var _12FixImage: UIImageView!
    
    @IBOutlet weak var _22Image: UIImageView!
    
    @IBOutlet weak var _32Image: UIImageView!
    
    @IBOutlet weak var _13Image: UIImageView!
    
    @IBOutlet weak var _23Image: UIImageView!
    
    @IBOutlet weak var _33Image: UIImageView!
    
    @IBOutlet weak var _11Outlet: UIButton!
    
    @IBOutlet weak var _21Outlet: UIButton!
    
    @IBOutlet weak var _31Outlet: UIButton!
    
    @IBOutlet weak var _12FixOutlet: UIButton!
    
    @IBOutlet weak var _22Outlet: UIButton!
    
    @IBOutlet weak var _32Outlet: UIButton!
    
    @IBOutlet weak var _13Outlet: UIButton!
    
    @IBOutlet weak var _23Outlet: UIButton!
    
    @IBOutlet weak var _33Outlet: UIButton!
    
    var _11 = "Empty"
    
    var _21 = "Empty"
    
    var _31 = "Empty"
    
    var _12 = "Empty"
    
    var _22 = "Empty"
    
    var _32 = "Empty"
    
    var _13 = "Empty"
    
    var _23 = "Empty"
    
    var _33 = "Empty"
    
    var turn = "X"
    
    var xPoints = 0
    
    var oPoints = 0
    
    @IBOutlet weak var xPointsLabel: UILabel!
    
    @IBOutlet weak var oPointsLabel: UILabel!
    
    let xWon = UIAlertController(title: "X won!", message: "Congrats", preferredStyle: .alert)
    
    let yWon = UIAlertController(title: "O won!", message: "Congrats", preferredStyle: .alert)
    
    let tie = UIAlertController(title: "Tie...", message: "Better than a loss I guess.", preferredStyle: .alert)
    
    let ok = UIAlertAction(title: "Ok", style: .default)
    
    func check() {
        if (_11 == "X" && _21 == "X" && _31 == "X") || (_12 == "X" && _22 == "X" && _32 == "X") || (_13 == "X" && _23 == "X" && _33 == "X") || (_11 == "X" && _12 == "X" && _13 == "X") || (_21 == "X" && _22 == "X" && _23 == "X") || (_31 == "X" && _32 == "X" && _33 == "X") || (_11 == "X" && _22 == "X" && _33 == "X") || (_31 == "X" && _22 == "X" && _13 == "X") {
            present(xWon, animated: true)
            xPoints = xPoints + 1
            resetBoard()
        }
        else if (_11 == "Y" && _21 == "Y" && _31 == "Y") || (_12 == "Y" && _22 == "Y" && _32 == "Y") || (_13 == "Y" && _23 == "Y" && _33 == "Y") || (_11 == "Y" && _12 == "Y" && _13 == "Y") || (_21 == "Y" && _22 == "Y" && _23 == "Y") || (_31 == "Y" && _32 == "Y" && _33 == "Y") || (_11 == "Y" && _22 == "Y" && _33 == "Y") || (_31 == "Y" && _22 == "Y" && _13 == "Y"){
            present(yWon, animated: true)
            oPoints = oPoints + 1
            resetBoard()
        }
        else if _11 != "Empty" && _12 != "Empty" && _13 != "Empty" && _21 != "Empty" && _22 != "Empty" && _23 != "Empty" && _31 != "Empty" && _32 != "Empty" && _33 != "Empty"{
            resetBoard()
            present(tie, animated: true)
        }
        xPointsLabel.text = "X: \(xPoints)"
        oPointsLabel.text = "O: \(oPoints)"
    }
    
    func resetBoard() {
        _11 = "Empty"
        _21 = "Empty"
        _31 = "Empty"
        _12 = "Empty"
        _22 = "Empty"
        _32 = "Empty"
        _13 = "Empty"
        _23 = "Empty"
        _33 = "Empty"
        _11Image.isHidden = true
        _11Outlet.isHidden = false
        _21Image.isHidden = true
        _21Outlet.isHidden = false
        _31Image.isHidden = true
        _31Outlet.isHidden = false
        _12FixImage.isHidden = true
        _12FixOutlet.isHidden = false
        _22Image.isHidden = true
        _22Outlet.isHidden = false
        _32Image.isHidden = true
        _32Outlet.isHidden = false
        _13Image.isHidden = true
        _13Outlet.isHidden = false
        _23Image.isHidden = true
        _23Outlet.isHidden = false
        _33Image.isHidden = true
        _33Outlet.isHidden = false
        turn = "X"
        check()
    }
    
    func reset() {
        xPoints = 0
        oPoints = 0
        resetBoard()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resetBoard()
        xWon.addAction(ok)
        yWon.addAction(ok)
        tie.addAction(ok)
    }
    
    @IBAction func _11Button(_ sender: UIButton) {
        _11 = turn
        _11Outlet.isHidden = true
        _11Image.isHidden = false
        if turn == "X" {
            _11Image.image = UIImage(named: "xImage")
            turn = "Y"
        }
        else if turn == "Y" {
            _11Image.image = UIImage(named: "oImage")
            turn = "X"
        }
        check()
    }
    
    @IBAction func _21Button(_ sender: UIButton) {
        _21 = turn
        _21Outlet.isHidden = true
        _21Image.isHidden = false
        if turn == "X" {
            _21Image.image = UIImage(named: "xImage")
            turn = "Y"
        }
        else if turn == "Y" {
            _21Image.image = UIImage(named: "oImage")
            turn = "X"
        }
        check()
    }
    
    @IBAction func _31Button(_ sender: UIButton) {
        _31 = turn
        _31Outlet.isHidden = true
        _31Image.isHidden = false
        if turn == "X" {
            _31Image.image = UIImage(named: "xImage")
            turn = "Y"
        }
        else if turn == "Y" {
            _31Image.image = UIImage(named: "oImage")
            turn = "X"
        }
        check()
    }
    
    @IBAction func _12FixButton(_ sender: Any) {
        _12 = turn
        _12FixOutlet.isHidden = true
        _12FixImage.isHidden = false
        if turn == "X" {
            _12FixImage.image = UIImage(named: "xImage")
            turn = "Y"
        }
        else if turn == "Y" {
            _12FixImage.image = UIImage(named: "oImage")
            turn = "X"
        }
        check()
    }
    
    @IBAction func _22Button(_ sender: UIButton) {
        _22 = turn
        _22Outlet.isHidden = true
        _22Image.isHidden = false
        if turn == "X" {
            _22Image.image = UIImage(named: "xImage")
            turn = "Y"
        }
        else if turn == "Y" {
            _22Image.image = UIImage(named: "oImage")
            turn = "X"
        }
        check()
    }
    
    @IBAction func _32Button(_ sender: Any) {
        _32 = turn
        _32Outlet.isHidden = true
        _32Image.isHidden = false
        if turn == "X" {
            _32Image.image = UIImage(named: "xImage")
            turn = "Y"
        }
        else if turn == "Y" {
            _32Image.image = UIImage(named: "oImage")
            turn = "X"
        }
        check()
    }
    
    @IBAction func _13Button(_ sender: UIButton) {
        _13 = turn
        _13Outlet.isHidden = true
        _13Image.isHidden = false
        if turn == "X" {
            _13Image.image = UIImage(named: "xImage")
            turn = "Y"
        }
        else if turn == "Y" {
            _13Image.image = UIImage(named: "oImage")
            turn = "X"
        }
        check()
    }

    @IBAction func _23Button(_ sender: UIButton) {
        _23 = turn
        _23Outlet.isHidden = true
        _23Image.isHidden = false
        if turn == "X" {
            _23Image.image = UIImage(named: "xImage")
            turn = "Y"
        }
        else if turn == "Y" {
            _23Image.image = UIImage(named: "oImage")
            turn = "X"
        }
        check()
    }
    
    @IBAction func _33Button(_ sender: UIButton) {
        _33 = turn
        _33Outlet.isHidden = true
        _33Image.isHidden = false
        if turn == "X" {
            _33Image.image = UIImage(named: "xImage")
            turn = "Y"
        }
        else if turn == "Y" {
            _33Image.image = UIImage(named: "oImage")
            turn = "X"
        }
        check()
    }
    
    @IBAction func reset(_ sender: UIButton) {
        reset()
    }
    
}
