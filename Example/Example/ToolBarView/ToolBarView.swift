//
//  ToolBarView.swift
//  Example
//
//  Created by caijinzhu on 2018/2/23.
//  Copyright © 2018年 alexiuce.github.io. All rights reserved.
//

import Cocoa

class ToolBarView: NSView {

    
    
    @IBOutlet var view: NSView!
    
    
    override init(frame frameRect: NSRect) {
        super.init(frame: frameRect)
        
        guard let nib = NSNib(nibNamed: NSNib.Name.init(rawValue: "ToolBarView"), bundle: nil) else { return  }
        
        var topArray = [NSArray?]()
        let pointer = AutoreleasingUnsafeMutablePointer<NSArray?>(&topArray)
        print("befor load nib")
        nib.instantiate(withOwner: self, topLevelObjects: pointer)
//        Bundle.main.loadNibNamed(NSNib.Name.init(rawValue: "ToolBarView"), owner: self, topLevelObjects: pointer)
        print("after load nib")
        view.frame = bounds
        self.addSubview(view)
        
        guard let views = pointer.pointee else { return  }
        for view in views {
            guard let v = view as? NSView else {continue}
            print(v)
        }
    }
    
    required init?(coder decoder: NSCoder) {
        super.init(coder: decoder)
    }
    
    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)

        // Drawing code here.
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        print("awke  from nib ")
    }
    
    
    
}
