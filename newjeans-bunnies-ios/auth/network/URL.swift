//
//  URL.swift
//  newjeans-bunnies-ios
//
//  Created by HamTory on 1/3/24.
//

import Foundation


extension URL{
    static func login() -> String {
        return "http://\(Constant.BASE_URL):\(Constant.PORT)/api/auth/login"
    }
    
    static func signup() -> String {
        return "http://\(Constant.BASE_URL):\(Constant.PORT)/api/auth/signup"
    }
    
    static func refrech() -> String {
        return "http://\(Constant.BASE_URL):\(Constant.PORT)/api/auth/refresh"
    }
    
    func refrech(userId: String) -> String? {
        return "http://\(Constant.BASE_URL):\(Constant.PORT)/api/user?userId=\(userId)"
    }
}
