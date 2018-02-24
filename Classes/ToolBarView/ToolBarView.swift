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
    
    public override func awakeFromNib() {
        super.awakeFromNib()
      
        // 获取pod bundle
       let podBundle =  Bundle(for: ToolBarView.self)
        // 获取存储图片资源的bundle url
        guard let toolImageBundleURL = podBundle.url(forResource: "ToolBarView", withExtension: "bundle") else {return}
        // 根据URL 获取bundle
        guard let toolImageBundle = Bundle(url: toolImageBundleURL)  else { return  }
    
        // 遍历所有btn
        for button in view.subviews {
            if let v = button as? NSButton {
                // 设置图片
                
               v.image =  toolImageBundle.image(forResource: NSImage.Name("toolbar_emoticon_normal"))
//                if let normalPath = toolImageBundle.pathForImageResource(NSImage.Name("toolbar_emoticon_down")) {
//                 v.image = NSImage(contentsOfFile: normalPath)
//                }
            }
        }
    }
    
    
    
}
