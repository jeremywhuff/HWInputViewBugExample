//
//  KeyboardViewController.swift
//  HWInputViewBugExample
//
//  Created by Jeremy Huff on 11/13/14.
//  Copyright (c) 2014 Jeremy Huff. All rights reserved.
//

import UIKit

protocol KeyboardViewControllerDelegate {
    func buttonPushed()
}

class KeyboardViewController: UIViewController {
    
    @IBOutlet var showAlphaKeyboardButton: UIButton!
    var delegate: KeyboardViewControllerDelegate? = nil
    
    @IBAction func showAlphaKeyboardPushed(sender: AnyObject) {
        delegate?.buttonPushed()
    }
}