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
            //Looks for single or multiple taps.
            let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
            //Uncomment the line below if you want the tap not not interfere and cancel other interactions.
            //tap.cancelsTouchesInView = false
            
            view.addGestureRecognizer(tap)
           
            NotificationCenter.default.addObserver(self,
                                                   selector: #selector(keyboardWillShow),
                                                   name: UIResponder.keyboardWillShowNotification,
                                                   object: nil)
            
            NotificationCenter.default.addObserver(self,
                                                   selector: #selector(keyboardWillHide),
                                                   name: UIResponder.keyboardWillHideNotification,
                                                   object: nil)
            
        }
        
        @objc func keyboardWillShow(notification: NSNotification) {
            if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameBeginUserInfoKey]
                as? NSValue)?.cgRectValue {
                if self.view.frame.origin.y == 0 {
                    self.view.frame.origin.y -= keyboardSize.height
                }
            }
        }

        @objc func keyboardWillHide(notification: NSNotification) {
                if self.view.frame.origin.y != 0 {
                    self.view.frame.origin.y = 0
                }
            }

        
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            self.view.endEditing(true)
            return false
        }
        
        //Calls this function when the tap is recognized.
        @objc func dismissKeyboard() {
            //Causes the view (or one of its embedded text fields) to resign the first responder status.
            view.endEditing(true)
            
            
    }
    
    @IBAction func ThisIsItButton(_ sender: Any) {
         UserDefaults.standard.set(moneyTextField.text, forKey: "moneyText")
        
        if moneyTextField.text == "" {
                  
                  let message: String = "Preencha todos os campos!"
                  let alert = UIAlertController(title:title,message: message, preferredStyle: .alert)
                  let action = UIAlertAction(title: "Ok",style: .default, handler: nil)
                  
                  alert.addAction(action)
                  
                  present(alert, animated: true, completion: nil)
        }
    }
    
   
}
    



