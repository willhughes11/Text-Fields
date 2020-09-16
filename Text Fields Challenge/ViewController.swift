//
//  ViewController.swift
//  Text Fields Challenge
//
//  Created by William K Hughes on 9/15/20.
//  Copyright © 2020 William K Hughes. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    let zipCodeDelegate = ZipCodeFieldDelegate()
    let cashTextDelegate = CashTextFieldDelegate()
    
    // MARK: Outlets
    @IBOutlet weak var zipField: UITextField!
    @IBOutlet weak var cashField: UITextField!
    @IBOutlet weak var lockableField: UITextField!
    @IBOutlet weak var textFieldLock: UISwitch!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.zipField.delegate = zipCodeDelegate
        self.cashField.delegate = cashTextDelegate
        self.lockableField.delegate = self
        
        self.textFieldLock.setOn(false, animated: false)
    }
    
       func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
           return self.textFieldLock.isOn
       }
       
       func textFieldShouldReturn(_ textField: UITextField) -> Bool {
           textField.resignFirstResponder()
           
           return true;
       }
    
       // MARK: Actions
       
       @IBAction func toggleTheTextEditor(_ sender: AnyObject) {
           
           if !(sender as! UISwitch).isOn {
               self.lockableField.resignFirstResponder()
           }
       }



}

