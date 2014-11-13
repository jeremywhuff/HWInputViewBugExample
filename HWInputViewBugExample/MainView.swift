//
//  MainView.swift
//  HWInputViewBugExample
//
//  Created by Jeremy Huff on 11/13/14.
//  Copyright (c) 2014 Jeremy Huff. All rights reserved.
//

import UIKit

class MainView: UIView, KeyboardViewControllerDelegate {
    
    var singleTapRecognizer: UITapGestureRecognizer = UITapGestureRecognizer()
    
    override var inputView: UIView! {
        get {
            return inputViewUnderlying
        }
        set(inputView) {
            inputViewUnderlying = inputView
        }
    }
    var inputViewUnderlying: UIView!
    
    @IBOutlet var textView: UITextView?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        singleTapRecognizer = UITapGestureRecognizer(target: self, action: Selector("singleTapRecognized"))
        addGestureRecognizer(singleTapRecognizer)
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        singleTapRecognizer = UITapGestureRecognizer(target: self, action: Selector("singleTapRecognized"))
        addGestureRecognizer(singleTapRecognizer)
    }
    
    func singleTapRecognized() {
        
        let keyboardViewController: KeyboardViewController = KeyboardViewController(nibName: "KeyboardView", bundle: NSBundle.mainBundle())
        keyboardViewController.delegate = self
        inputView = keyboardViewController.view
        becomeFirstResponder()
    }
    
    override func canBecomeFirstResponder() -> Bool {
        return true
    }
    
    func buttonPushed() {
        textView?.becomeFirstResponder()
    }
}