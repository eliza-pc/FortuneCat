//
//  CallForActionViewController.swift
//  FortuneCat
//
//  Created by Eliza Maria Porto de Carvalho on 25/01/20.
//  Copyright © 2020 Academy. All rights reserved.
//

import Foundation
import UIKit

class CallToActionViewController: UIViewController, UITextFieldDelegate{
    
    @IBOutlet weak var moneyTextField: UITextField!
   
    var moneyText: String = ""
    let defaults = UserDefaults.standard
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func ThisIsItButton(_ sender: Any) {
         UserDefaults.standard.set(moneyTextField.text, forKey: "moneyText")
    }
    
   
}
    



