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
    var moneyForTheFuture: Float = 0.0
    
    var essentialMoney: Float = 0.0
    var educationMoney: Float = 0.0
    var varFreeMoney: Float = 0.0
    var emergencyMoney: Float = 0.0
    var aposentadoriaMoney: Float = 0.0
    var varDreamsMoney: Float = 0.0
    
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
        moneyForTheFuture = Float(totalOfMoney!)! * 30.0 / 100
        
        essentialMoney = Float(totalOfMoney!)! * 55.0 / 100
        educationMoney = Float(totalOfMoney!)! * 5.0 / 100
        varFreeMoney = Float(totalOfMoney!)! * 10.0 / 100
        
        emergencyMoney = Float(totalOfMoney!)! * 10.0 / 100
        aposentadoriaMoney = Float(totalOfMoney!)! * 10.0 / 100
        varDreamsMoney = Float(totalOfMoney!)! * 10.0 / 100
      
        
        essentialMoneyLabel.text = "Essential Money: \(essentialMoney)"
        educationMoneyLabel.text = "Education Money: \(educationMoney)"
        freeMoney.text = "Free Money: \(varFreeMoney)"
        aposentadoriaMoneyLabel.text = "Aposentadoria: \(aposentadoriaMoney)"
        emergencyMoneyLabel.text = "Emergency: \(emergencyMoney)"
        dreamsMoney.text = "Dreams: \(varDreamsMoney)"
        
    }
   
}
