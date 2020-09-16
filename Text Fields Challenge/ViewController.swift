//
//  ViewController.swift
//  Text Fields Challenge
//
//  Created by William K Hughes on 9/15/20.
//  Copyright © 2020 William K Hughes. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: Outlets
    @IBOutlet weak var zipField: UITextField!
    @IBOutlet weak var cashField: UITextField!
    @IBOutlet weak var lockableField: UITextField!
    @IBOutlet weak var textFieldLock: UISwitch!
    
    let zipCodeDelegate = ZipCodeFieldDelegate()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.zipField.delegate = zipCodeDelegate
    }


}

