//
//  MyFortuneViewController.swift
//  FortuneCat
//
//  Created by Eliza Maria Porto de Carvalho on 25/01/20.
//  Copyright © 2020 Academy. All rights reserved.
//

import Foundation
import UIKit

class MyFortuneViewController: UIViewController, UITextFieldDelegate{
    
    let totalOfMoney = UserDefaults.standard.string(forKey: "moneyText")
    var moneyForThePresent: Float = 0.0
    
    @IBOutlet var essentialMoneyLabel: UILabel!
    @IBOutlet var educationMoneyLabel: UILabel!
    @IBOutlet var freeMoney: UILabel!
    @IBOutlet var aposentadoriaMoneyLabel: UILabel!
    @IBOutlet var emergencyMoneyLabel: UILabel!
    @IBOutlet var dreamsMoney: UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        essentialMoneyLabel.text = "My total of money is \(String(describing: totalOfMoney!))!"
        
        moneyForThePresent = Float(totalOfMoney!)! * 70.0 / 100
        

    }
   
}
