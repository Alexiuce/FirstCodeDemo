//
//  ViewController.swift
//  Example
//
//  Created by caijinzhu on 2018/2/23.
//  Copyright © 2018年 alexiuce.github.io. All rights reserved.
//

import Cocoa
import FirstCodeKit


class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let str = "Hello World"
//        let str1 = str.xc_remove("work")

        
        let base64Str = str.xc_base64Encode()
        print("endocde: " + base64Str)
        let decodeStr = "YWJjCg==".xc_base64Decode()
        print("decode: " + decodeStr)
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

