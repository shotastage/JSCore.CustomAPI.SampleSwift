//
//  JSNApiSample.swift
//  JSNewAPISample
//
//  Created by Shota Shimazu on 2022/01/04.
//

import Foundation
import JavaScriptCore

class SampleJSAPI {
    
    let context:JSContext = JSContext()
    
    func execute() {
        context.evaluateScript("var random = function() { return Math.floor( Math.random() * 100 )}")

    }
    
    func receiveResult() -> Int {
        let result: JSValue = context.evaluateScript("random()")
        return Int(result.toInt32())
    }
}
