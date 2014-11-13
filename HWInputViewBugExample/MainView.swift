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
        println("Tap recognized")
    }
}