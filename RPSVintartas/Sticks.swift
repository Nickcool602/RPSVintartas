//
//  Sticks.swift
//  RPSVintartas
//
//  Created by NICHOLAS VINTARTAS on 11/26/24.
//

import UIKit

class Sticks: UIViewController {
    
    @IBOutlet weak var tlImage: UIImageView!
    
    @IBOutlet weak var trImage: UIImageView!
    
    @IBOutlet weak var blImage: UIImageView!
    
    @IBOutlet weak var brImage: UIImageView!
    
    @IBOutlet weak var tllOutlet: UIButton!
    
    @IBOutlet weak var tlrOutlet: UIButton!
    
    @IBOutlet weak var tSplitOutlet: UIButton!
    
    @IBOutlet weak var trlOutlet: UIButton!
    
    @IBOutlet weak var trrOutlet: UIButton!
    
    @IBOutlet weak var bllOutlet: UIButton!
    
    @IBOutlet weak var blrOutlet: UIButton!
    
    @IBOutlet weak var bSplitOutlet: UIButton!
    
    @IBOutlet weak var brlOutlet: UIButton!
    
    @IBOutlet weak var brrOutlet: UIButton!
    
    @IBOutlet weak var turnOutlet: UIImageView!
    
    let topWin = UIAlertController(title: "Top won!", message: "Bottom starts next", preferredStyle: .alert)
    
    let bottomWin = UIAlertController(title: "Bottom won!", message: "Top starts next", preferredStyle: .alert)
    
    let okAction = UIAlertAction(title: "OK", style: .default)
    
    var turn = "Top"
    
    class top {
        static var left = 1
        static var leftStatus = true
        static var right = 1
        static var rightStatus = true
    }
    class bottom {
        static var left = 1
        static var leftStatus = true
        static var right = 1
        static var rightStatus = true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        reset()
        update()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        topWin.addAction(okAction)
        bottomWin.addAction(okAction)
        reset()
        update()
    }
    
    func reset() {
        top.right = 1
        top.left = 1
        bottom.right = 1
        bottom.left = 1
        top.rightStatus = true
        top.leftStatus = true
        bottom.rightStatus = true
        bottom.leftStatus = true
        update()
    }
    
    func update() {
        if turn == "Bottom" {
            bllOutlet.isHidden = true
            blrOutlet.isHidden = true
            brlOutlet.isHidden = true
            brrOutlet.isHidden = true
            bSplitOutlet.isHidden = true
        }
        else if turn == "Top" {
            tllOutlet.isHidden = true
            tlrOutlet.isHidden = true
            trlOutlet.isHidden = true
            trrOutlet.isHidden = true
            tSplitOutlet.isHidden = true
        }
        if top.left >= 5 {
            top.leftStatus = false
            brlOutlet.isHidden = true
            bllOutlet.isHidden = true
        }
        if top.right >= 5 {
            top.rightStatus = false
            brrOutlet.isHidden = true
            blrOutlet.isHidden = true
        }
        if bottom.left >= 5 {
            bottom.leftStatus = false
            trlOutlet.isHidden = true
            tllOutlet.isHidden = true
        }
        if bottom.right >= 5 {
            bottom.rightStatus = false
            trrOutlet.isHidden = true
            tlrOutlet.isHidden = true
        }
        if turn == "Top" {
            turnOutlet.image = UIImage(named:"upArrow")
        }
        else if turn == "Bottom" {
            turnOutlet.image = UIImage(named:"downArrow")
        }
        tlImage.image = UIImage(named: "\(top.left)tic")
        trImage.image = UIImage(named: "\(top.right)tic")
        blImage.image = UIImage(named: "\(bottom.left)tic")
        brImage.image = UIImage(named: "\(bottom.right)tic")
        
        if top.leftStatus == false && top.rightStatus == false {
            present(bottomWin, animated: true)
            reset()
        }
        else if top.leftStatus == false {
            tlImage.isHidden = true
            tllOutlet.isHidden = true
            tlrOutlet.isHidden = true
            trlOutlet.isHidden = false
            trrOutlet.isHidden = false
            trImage.isHidden = false
            brrOutlet.isHidden = true
            blrOutlet.isHidden = true
            bllOutlet.isHidden = true
            brlOutlet.isHidden = true
            if top.right == 2 || top.right == 4 {
                tSplitOutlet.isHidden = false
            }
            else {
                tSplitOutlet.isHidden = true
            }
        }
        else if top.rightStatus == false {
            trImage.isHidden = true
            trlOutlet.isHidden = true
            trrOutlet.isHidden = true
            tllOutlet.isHidden = false
            tlrOutlet.isHidden = false
            tlImage.isHidden = false
            brlOutlet.isHidden = true
            bllOutlet.isHidden = true
            blrOutlet.isHidden = true
            brrOutlet.isHidden = true
            if top.left == 2 || top.left == 4 {
                tSplitOutlet.isHidden = false
            }
            else {
                tSplitOutlet.isHidden = true
            }
        }
        else {
            tSplitOutlet.isHidden = true
            trImage.isHidden = false
            tlImage.isHidden = false
            trrOutlet.isHidden = false
            trlOutlet.isHidden = false
            tlrOutlet.isHidden = false
            tllOutlet.isHidden = false
        }
        if bottom.leftStatus == false && bottom.rightStatus == false {
            present(topWin, animated: true)
            reset()
        }
        else if bottom.leftStatus == false {
            blImage.isHidden = true
            bllOutlet.isHidden = true
            blrOutlet.isHidden = true
            brImage.isHidden = false
            brlOutlet.isHidden = false
            brrOutlet.isHidden = false
            trlOutlet.isHidden = true
            tllOutlet.isHidden = true
            tllOutlet.isHidden = true
            trlOutlet.isHidden = true
            if bottom.right == 2 || bottom.right == 4 {
                bSplitOutlet.isHidden = false
            }
            else {
                bSplitOutlet.isHidden = true
            }
        }
        else if bottom.rightStatus == false {
            brImage.isHidden = true
            brlOutlet.isHidden = true
            brrOutlet.isHidden = true
            blImage.isHidden = false
            bllOutlet.isHidden = false
            blrOutlet.isHidden = false
            trrOutlet.isHidden = true
            tlrOutlet.isHidden = true
            tlrOutlet.isHidden = true
            trrOutlet.isHidden = true
            if bottom.left == 2 || bottom.left == 4 {
                bSplitOutlet.isHidden = false
            }
            else {
                bSplitOutlet.isHidden = true
            }
        }
        else {
            bSplitOutlet.isHidden = true
            brImage.isHidden = false
            blImage.isHidden = false
            brrOutlet.isHidden = false
            brlOutlet.isHidden = false
            blrOutlet.isHidden = false
            bllOutlet.isHidden = false
        }
        if turn == "Top" {
            bllOutlet.isHidden = true
            blrOutlet.isHidden = true
            brlOutlet.isHidden = true
            brrOutlet.isHidden = true
            bSplitOutlet.isHidden = true
        }
        else if turn == "Bottom" {
            tllOutlet.isHidden = true
            tlrOutlet.isHidden = true
            trlOutlet.isHidden = true
            trrOutlet.isHidden = true
            tSplitOutlet.isHidden = true
        }
        if top.left >= 5 {
            top.leftStatus = false
            brlOutlet.isHidden = true
            bllOutlet.isHidden = true
        }
        if top.right >= 5 {
            top.rightStatus = false
            brrOutlet.isHidden = true
            blrOutlet.isHidden = true
        }
        if bottom.left >= 5 {
            bottom.leftStatus = false
            trlOutlet.isHidden = true
            tllOutlet.isHidden = true
        }
        if bottom.right >= 5 {
            bottom.rightStatus = false
            trrOutlet.isHidden = true
            tlrOutlet.isHidden = true
        }
    }
    
    @IBAction func tllButton(_ sender: UIButton) {
        if turn == "Top" {
            bottom.left = bottom.left + top.left
            if bottom.left >= 5 {
                bottom.leftStatus = false
            }
            turn = "Bottom"
        }
        update()
    }
    
    @IBAction func tlrButton(_ sender: UIButton) {
        if turn == "Top" {
            bottom.right = bottom.right + top.left
            if bottom.right >= 5 {
                bottom.rightStatus = false
            }
            turn = "Bottom"
        }
        update()
    }
    
    @IBAction func tSplitButton(_ sender: UIButton) {
        if top.left == 4 || top.right == 4 {
            top.left = 2
            top.right = 2
        }
        else if top.left == 2 || top.right == 2 {
            top.left = 1
            top.right = 1
        }
        top.leftStatus = true
        top.rightStatus = true
        turn = "Bottom"
        update()
    }
    
    @IBAction func trlButton(_ sender: UIButton) {
        if turn == "Top" {
            bottom.left = bottom.left + top.right
            if bottom.left >= 5 {
                bottom.leftStatus = false
            }
            turn = "Bottom"
        }
        update()
    }
    
    @IBAction func trrButton(_ sender: UIButton) {
        if turn == "Top" {
            bottom.right = bottom.right + top.right
            if bottom.right >= 5 {
                bottom.rightStatus = false
            }
            turn = "Bottom"
        }
        update()
    }
    
    @IBAction func bllButton(_ sender: UIButton) {
        if turn == "Bottom" {
            top.left = top.left + bottom.left
            if top.left >= 5 {
                top.leftStatus = false
            }
            turn = "Top"
        }
        bottom.leftStatus = true
        bottom.rightStatus = true
        update()
    }
    
    @IBAction func blrButton(_ sender: UIButton) {
        if turn == "Bottom" {
            top.right = top.right + bottom.left
            if top.right >= 5 {
                top.rightStatus = false
            }
            turn = "Top"
        }
        update()
    }
    
    @IBAction func bSplitButton(_ sender: UIButton) {
        if bottom.left == 4 || bottom.right == 4 {
            bottom.left = 2
            bottom.right = 2
        }
        else if bottom.left == 2 || bottom.right == 2 {
            bottom.left = 1
            bottom.right = 1
        }
        bottom.leftStatus = true
        bottom.rightStatus = true
        turn = "Top"
        update()
    }
    
    @IBAction func brlButton(_ sender: UIButton) {
        if turn == "Bottom" {
            top.left = top.left + bottom.right
            if top.left >= 5 {
                top.leftStatus = false
            }
            turn = "Top"
        }
        update()
    }
    
    @IBAction func brrButton(_ sender: UIButton) {
        if turn == "Bottom" {
            top.right = top.right + bottom.right
            if top.right >= 5 {
                top.rightStatus = false
            }
            turn = "Top"
        }
        update()
    }
    
}
