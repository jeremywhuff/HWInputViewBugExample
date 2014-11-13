//
//  MainView.swift
//  HWInputViewBugExample
//
//  Created by Jeremy Huff on 11/13/14.
//  Copyright (c) 2014 Jeremy Huff. All rights reserved.
//

import UIKit

class MainView: UIView {
    
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
        let screenSize: CGSize = UIScreen.mainScreen().bounds.size
        let customInputView: UIView = UIView(frame: CGRect(x: 0, y: 0, width: screenSize.width, height: 0.3 * screenSize.height))
        customInputView.backgroundColor = UIColor.redColor()
        inputView = customInputView
        becomeFirstResponder()
    }
    
    override func canBecomeFirstResponder() -> Bool {
        return true
    }
}