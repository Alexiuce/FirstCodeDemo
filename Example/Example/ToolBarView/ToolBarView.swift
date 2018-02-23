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
        Bundle.main.loadNibNamed(NSNib.Name.init(rawValue: "ToolBarView"), owner: self, topLevelObjects: nil)
        view.frame = bounds
        self.addSubview(view)
    }
    
    required init?(coder decoder: NSCoder) {
        super.init(coder: decoder)
    }
    
    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)

        // Drawing code here.
    }
    
    
    
}
