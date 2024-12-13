//
//  pixelArt.swift
//  RPSVintartas
//
//  Created by NICHOLAS VINTARTAS on 12/10/24.
//

import UIKit

class pixelArt: UIViewController {
    
    @IBOutlet weak var whiteOutlet: UIButton!
    
    @IBOutlet weak var lightGreyOutlet: UIButton!
    
    @IBOutlet weak var darkGreyOutlet: UIButton!
    
    @IBOutlet weak var blackOutlet: UIButton!
    
    @IBOutlet weak var redOutlet: UIButton!
    
    @IBOutlet weak var orangeOutlet: UIButton!
    
    @IBOutlet weak var yellowOutlet: UIButton!
    
    @IBOutlet weak var greenOutlet: UIButton!
    
    @IBOutlet weak var cyanOutlet: UIButton!
    
    @IBOutlet weak var blueOutlet: UIButton!
    
    @IBOutlet weak var purpleOutlet: UIButton!
    
    @IBOutlet weak var pinkOutlet: UIButton!
    
    @IBOutlet weak var _11Outlet: UIImageView!
    
    @IBOutlet weak var _12Outlet: UIImageView!
    
    @IBOutlet weak var _13Outlet: UIImageView!
    
    @IBOutlet weak var _14Outlet: UIImageView!
    
    @IBOutlet weak var _15Outlet: UIImageView!
    
    @IBOutlet weak var _16Outlet: UIImageView!
    
    @IBOutlet weak var _21Outlet: UIImageView!
    
    @IBOutlet weak var _22Outlet: UIImageView!
    
    @IBOutlet weak var _23Outlet: UIImageView!
    
    @IBOutlet weak var _24Outlet: UIImageView!
    
    @IBOutlet weak var _25Outlet: UIImageView!
    
    @IBOutlet weak var _26Outlet: UIImageView!
    
    @IBOutlet weak var _31Outlet: UIImageView!
    
    @IBOutlet weak var _32Outlet: UIImageView!
    
    @IBOutlet weak var _33Outlet: UIImageView!
    
    @IBOutlet weak var _34Outlet: UIImageView!
    
    @IBOutlet weak var _35Outlet: UIImageView!
    
    @IBOutlet weak var _36Outlet: UIImageView!
    
    @IBOutlet weak var _41Outlet: UIImageView!
    
    @IBOutlet weak var _42Outlet: UIImageView!
    
    @IBOutlet weak var _43Outlet: UIImageView!
    
    @IBOutlet weak var _44Outlet: UIImageView!
    
    @IBOutlet weak var _45Outlet: UIImageView!
    
    @IBOutlet weak var _46Outlet: UIImageView!
    
    @IBOutlet weak var _51Outlet: UIImageView!
    
    @IBOutlet weak var _52Outlet: UIImageView!
    
    @IBOutlet weak var _53Outlet: UIImageView!
    
    @IBOutlet weak var _54Outlet: UIImageView!
    
    @IBOutlet weak var _55Outlet: UIImageView!
    
    @IBOutlet weak var _56Outlet: UIImageView!
    
    @IBOutlet weak var _61Outlet: UIImageView!
    
    @IBOutlet weak var _62Outlet: UIImageView!
    
    @IBOutlet weak var _63Outlet: UIImageView!
    
    @IBOutlet weak var _64Outlet: UIImageView!
    
    @IBOutlet weak var _65Outlet: UIImageView!
    
    @IBOutlet weak var _66Outlet: UIImageView!
    
    @IBOutlet weak var _71Outlet: UIImageView!
    
    @IBOutlet weak var _72Outlet: UIImageView!
    
    @IBOutlet weak var _73Outlet: UIImageView!
    
    @IBOutlet weak var _74Outlet: UIImageView!
    
    @IBOutlet weak var _75Outlet: UIImageView!
    
    @IBOutlet weak var _76Outlet: UIImageView!
    
    @IBOutlet weak var _81Outlet: UIImageView!
    
    @IBOutlet weak var _82Outlet: UIImageView!
    
    @IBOutlet weak var _83Outlet: UIImageView!
    
    @IBOutlet weak var _84Outlet: UIImageView!
    
    @IBOutlet weak var _85Outlet: UIImageView!
    
    @IBOutlet weak var _86Outlet: UIImageView!
    
    var colorChosen = "Black"
    
    func reset() {
        buttonReset()
    }
    
    func buttonReset() {
        whiteOutlet.backgroundColor = nil
        lightGreyOutlet.backgroundColor = nil
        darkGreyOutlet.backgroundColor = nil
        blackOutlet.backgroundColor = nil
        redOutlet.backgroundColor = nil
        orangeOutlet.backgroundColor = nil
        yellowOutlet.backgroundColor = nil
        greenOutlet.backgroundColor = nil
        blueOutlet.backgroundColor = nil
        cyanOutlet.backgroundColor = nil
        purpleOutlet.backgroundColor = nil
        pinkOutlet.backgroundColor = nil
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func whiteButton(_ sender: UIButton) {
        buttonReset()
        whiteOutlet.backgroundColor = .white
        colorChosen = "White"
    }
    
    @IBAction func lightGreyButton(_ sender: UIButton) {
        buttonReset()
        lightGreyOutlet.backgroundColor = .white
        colorChosen = "Light Grey"
    }
    
    @IBAction func darkGreyButton(_ sender: UIButton) {
        buttonReset()
        darkGreyOutlet.backgroundColor = .white
        colorChosen = "Dark Grey"
    }
    
    @IBAction func blackButton(_ sender: UIButton) {
        buttonReset()
        blackOutlet.backgroundColor = .white
        colorChosen = "Black"
    }
    
    @IBAction func redButton(_ sender: UIButton) {
        buttonReset()
        redOutlet.backgroundColor = .white
        colorChosen = "Red"
    }
    
    @IBAction func orangeButton(_ sender: UIButton) {
        buttonReset()
        orangeOutlet.backgroundColor = .white
        colorChosen = "Orange"
    }
    
    @IBAction func yellowButton(_ sender: UIButton) {
        buttonReset()
        yellowOutlet.backgroundColor = .white
        colorChosen = "Yellow"
    }
    
    @IBAction func greenButton(_ sender: UIButton) {
        buttonReset()
        greenOutlet.backgroundColor = .white
        colorChosen = "Green"
    }
    
    @IBAction func cyanButton(_ sender: UIButton) {
        buttonReset()
        cyanOutlet.backgroundColor = .white
        colorChosen = "Cyan"
    }
    
    @IBAction func blueButton(_ sender: UIButton) {
        buttonReset()
        blueOutlet.backgroundColor = .white
        colorChosen = "Blue"
    }
    
    @IBAction func purpleButton(_ sender: UIButton) {
        buttonReset()
        purpleOutlet.backgroundColor = .white
        colorChosen = "Purple"
    }
    
    @IBAction func pinkButton(_ sender: UIButton) {
        buttonReset()
        pinkOutlet.backgroundColor = .white
        colorChosen = "Pink"
    }
    
    @IBAction func hideButton(_ sender: UIButton) {
    }
    
    @IBAction func showButton(_ sender: UIButton) {
    }
    
    @IBAction func _11Button(_ sender: UIButton) {
        _11Outlet.image = UIImage(named: colorChosen)
    }
    
    @IBAction func _12Button(_ sender: UIButton) {
        _12Outlet.image = UIImage(named: colorChosen)
    }
    
    @IBAction func _13Button(_ sender: UIButton) {
        _13Outlet.image = UIImage(named: colorChosen)
    }
    
    @IBAction func _14Button(_ sender: UIButton) {
        _14Outlet.image = UIImage(named: colorChosen)
    }
    
    @IBAction func _15Button(_ sender: UIButton) {
        _15Outlet.image = UIImage(named: colorChosen)
    }
    
    @IBAction func _16Button(_ sender: UIButton) {
        _16Outlet.image = UIImage(named: colorChosen)
    }
    
    @IBAction func _21Button(_ sender: UIButton) {
        _11Outlet.image = UIImage(named: colorChosen)
    }
    
    @IBAction func _22Button(_ sender: UIButton) {
        _22Outlet.image = UIImage(named: colorChosen)
    }
    
    @IBAction func _23Button(_ sender: UIButton) {
        _23Outlet.image = UIImage(named: colorChosen)
    }
    
    @IBAction func _24Button(_ sender: UIButton) {
        _24Outlet.image = UIImage(named: colorChosen)
    }
    
    @IBAction func _25Button(_ sender: UIButton) {
        _25Outlet.image = UIImage(named: colorChosen)
    }
    
    @IBAction func _26Button(_ sender: UIButton) {
        _26Outlet.image = UIImage(named: colorChosen)
    }
    
    @IBAction func _31Button(_ sender: UIButton) {
        _31Outlet.image = UIImage(named: colorChosen)
    }
    
    @IBAction func _32Button(_ sender: UIButton) {
        _32Outlet.image = UIImage(named: colorChosen)
    }
    
    @IBAction func _33Button(_ sender: UIButton) {
        _33Outlet.image = UIImage(named: colorChosen)
    }
    
    @IBAction func _34Button(_ sender: UIButton) {
        _34Outlet.image = UIImage(named: colorChosen)
    }
    
    @IBAction func _35Button(_ sender: UIButton) {
        _35Outlet.image = UIImage(named: colorChosen)
    }
    
    @IBAction func _36Button(_ sender: UIButton) {
        _36Outlet.image = UIImage(named: colorChosen)
    }
    
    @IBAction func _41Button(_ sender: UIButton) {
        _41Outlet.image = UIImage(named: colorChosen)
    }
    
    @IBAction func _42Button(_ sender: UIButton) {
        _42Outlet.image = UIImage(named: colorChosen)
    }
    
    @IBAction func _43Button(_ sender: UIButton) {
        _43Outlet.image = UIImage(named: colorChosen)
    }
    
    @IBAction func _44Button(_ sender: UIButton) {
        _44Outlet.image = UIImage(named: colorChosen)
    }
    
    @IBAction func _45Button(_ sender: UIButton) {
        _45Outlet.image = UIImage(named: colorChosen)
    }
    
    @IBAction func _46Button(_ sender: UIButton) {
        _46Outlet.image = UIImage(named: colorChosen)
    }
    
    @IBAction func _51Button(_ sender: UIButton) {
        _51Outlet.image = UIImage(named: colorChosen)
    }
    
    @IBAction func _52Button(_ sender: UIButton) {
        _52Outlet.image = UIImage(named: colorChosen)
    }
    
    @IBAction func _53Button(_ sender: UIButton) {
        _53Outlet.image = UIImage(named: colorChosen)
    }
    
    @IBAction func _54Button(_ sender: UIButton) {
        _54Outlet.image = UIImage(named: colorChosen)
    }
    
    @IBAction func _55Button(_ sender: UIButton) {
        _55Outlet.image = UIImage(named: colorChosen)
    }
    
    @IBAction func _56Button(_ sender: UIButton) {
        _56Outlet.image = UIImage(named: colorChosen)
    }
    
    @IBAction func _61Button(_ sender: UIButton) {
        _61Outlet.image = UIImage(named: colorChosen)
    }
    
    @IBAction func _62Button(_ sender: UIButton) {
        _62Outlet.image = UIImage(named: colorChosen)
    }
    
    @IBAction func _63Button(_ sender: UIButton) {
        _63Outlet.image = UIImage(named: colorChosen)
    }
    
    @IBAction func _64Button(_ sender: UIButton) {
        _64Outlet.image = UIImage(named: colorChosen)
    }
    
    @IBAction func _65Button(_ sender: UIButton) {
        _65Outlet.image = UIImage(named: colorChosen)
    }
    
    @IBAction func _66Button(_ sender: UIButton) {
        _66Outlet.image = UIImage(named: colorChosen)
    }
    
    @IBAction func _71Button(_ sender: UIButton) {
        _71Outlet.image = UIImage(named: colorChosen)
    }
    
    @IBAction func _72Button(_ sender: UIButton) {
        _72Outlet.image = UIImage(named: colorChosen)
    }
    
    @IBAction func _73Button(_ sender: UIButton) {
        _73Outlet.image = UIImage(named: colorChosen)
    }
    
    @IBAction func _74Button(_ sender: UIButton) {
        _74Outlet.image = UIImage(named: colorChosen)
    }
    
    @IBAction func _75Button(_ sender: UIButton) {
        _75Outlet.image = UIImage(named: colorChosen)
    }
    
    @IBAction func _76Button(_ sender: UIButton) {
        _76Outlet.image = UIImage(named: colorChosen)
    }
    
    @IBAction func _81Button(_ sender: UIButton) {
        _81Outlet.image = UIImage(named: colorChosen)
    }
    
    @IBAction func _82Button(_ sender: UIButton) {
        _82Outlet.image = UIImage(named: colorChosen)
    }
    
    @IBAction func _83Button(_ sender: UIButton) {
        _83Outlet.image = UIImage(named: colorChosen)
    }
    
    @IBAction func _84Button(_ sender: UIButton) {
        _84Outlet.image = UIImage(named: colorChosen)
    }
    
    @IBAction func _85Button(_ sender: UIButton) {
        _85Outlet.image = UIImage(named: colorChosen)
    }
    
    @IBAction func _86Button(_ sender: UIButton) {
        _86Outlet.image = UIImage(named: colorChosen)
    }
    
}
