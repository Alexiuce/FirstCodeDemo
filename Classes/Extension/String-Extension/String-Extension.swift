//
//  String-Extension.swift
//  FirstCodeKit
//  字符串的扩展功能
//

import Foundation


extension String{

   /** 删除字符串中的指定内容  */
   public func xc_remove(_ name:String) -> String {
        return replacingOccurrences(of: name, with: "")
    }
    /** base64 encode */
    public func xc_base64Encode() -> String{
        guard let strData = data(using: .utf8) else { return "" }
        return strData.base64EncodedString(options: .init(rawValue: 0))
    }
    /** base64 decode */
    public func xc_base64Decode() -> String  {
        
        guard let strData = Data(base64Encoded: self, options: .init(rawValue: 0)) else { return "" }
        guard let result = String(data: strData, encoding: .utf8) else { return "" }
        return result
    }
    
    
    
}
