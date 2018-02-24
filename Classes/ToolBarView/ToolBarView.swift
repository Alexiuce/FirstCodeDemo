//
//  ToolBarView.swift
//  Example
//
//  Created by caijinzhu on 2018/2/23.
//  Copyright © 2018年 alexiuce.github.io. All rights reserved.
//

import Cocoa

public class ToolBarView: NSView {

    
    
    @IBOutlet var view: NSView!
    
    
 public   override init(frame frameRect: NSRect) {
        super.init(frame: frameRect)
    
         Bundle(for: ToolBarView.self).loadNibNamed(NSNib.Name.init(rawValue: "ToolBarView"), owner: self, topLevelObjects: nil)
        view.frame = bounds
        self.addSubview(view)
    }
    
  public  required init?(coder decoder: NSCoder) {
        super.init(coder: decoder)
    }
    
   public override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)

        // Drawing code here.
    }
    
    
    
}
