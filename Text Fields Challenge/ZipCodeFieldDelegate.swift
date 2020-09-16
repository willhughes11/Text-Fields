//
//  ZipCodeFieldDelegate.swift
//  Text Fields Challenge
//
//  Created by William K Hughes on 9/15/20.
//  Copyright © 2020 William K Hughes. All rights reserved.
//

import Foundation
import UIKit

class ZipCodeFieldDelegate : NSObject, UITextFieldDelegate {
        
        func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool{
            let maxLength = 5
            let currentString: NSString = (textField.text ?? "") as NSString
            let newString: NSString =
                currentString.replacingCharacters(in: range, with: string) as NSString
            let invalidCharacters = CharacterSet(charactersIn: "0123456789").inverted
            
            if (string.rangeOfCharacter(from: invalidCharacters) == nil) {
                return (newString.length <= maxLength)
            } else {
                return false
            }
        }
}
