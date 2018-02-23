//
//  String-Extension.swift
//  FirstCodeKit
//  Dictionary的扩展功能
//

import Foundation


extension Dictionary{
    /** 转json 字符串 */
    public func xc_jsonString() -> String {
        if !JSONSerialization.isValidJSONObject(self) {return ""}
        guard let jsdata = try? JSONSerialization.data(withJSONObject: self, options: .prettyPrinted) else { return "" }
        guard let result =  String(data: jsdata, encoding: .utf8) else { return "" }
        return result
    }
    
}
