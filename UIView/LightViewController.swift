//
//  LightViewController.swift
//  UIView
//
//  Created by Công on 10/23/20.
//  Copyright © 2020 Công. All rights reserved.
//

import UIKit

class LightViewController: UIViewController {
    
    @IBOutlet weak var bulbImageView: UIImageView!
    @IBOutlet weak var isOnSwitch: UISwitch!
    @IBOutlet weak var isOnButton: UIButton!
    var isCheck: Bool!
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        
        isOnSwitch.isOn = true
        bulbImageView.image = UIImage(named: "bulb-on")
        view.backgroundColor = UIColor.black
        isCheck = true
        isOnButton.setTitle("Hãy Tắt đèn", for: .normal)
        self.touchUpInSide(isOnButton ?? nil!)
        
        
    }
    
    @IBAction func offBulb(_ sender: UISwitch) {
        if sender.isOn  {
            bulbImageView.image = UIImage(named: "bulb-on")
            isOnButton.setTitle("Hãy Tắt Đèn", for: .normal)
            view.backgroundColor = UIColor.black
            isCheck = false
        }else{
            bulbImageView.image = UIImage(named: "hihi")
            isOnButton.setTitle("Hãy Bật Đèn", for: .normal)
            view.backgroundColor = UIColor.white
            isCheck = true
        }
        
        
    }
    
    @IBAction func touchUpInSide(_ sender: Any) {
        if isCheck {
            bulbImageView.image = UIImage(named: "bulb-on")
            isOnSwitch.isOn = true
            isOnButton.setTitle("Hãy Tắt Đèn", for: .normal)
            view.backgroundColor = UIColor.black
            
        }else{
            bulbImageView.image = UIImage(named: "hihi")
            isOnSwitch.isOn = false
            isOnButton.setTitle("Hãy Bật Đèn", for: .normal)
            view.backgroundColor = UIColor.white
            
        }
        isCheck = !isCheck
    }
    
}
