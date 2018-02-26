//
//  ViewController.swift
//  Example
//
//  Copyright © 2018年 alexiuce.github.io. All rights reserved.
//

import Cocoa
import FirstCodeKit


class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

//        let str = "Hello World"
//        let base64Str = str.xc_base64Encode()
//        print("endocde: " + base64Str)
//        let decodeStr = "YWJjCg==".xc_base64Decode()
//        print("decode: " + decodeStr)
//
        guard let range = Range(NSMakeRange(0, 3), in: str) else{ return }
        
        let subString = String(str[range])
        print("sub string =    " + subString)
        
        let dict = ["name":"job","age": 19,"location":"NY"] as [String : Any]
        print(dict.xc_jsonString())
        
        let toolBar = ToolBarView(frame: NSMakeRect(100, 100, 300, 50))
        
        view.addSubview(toolBar)
        
    }



}

