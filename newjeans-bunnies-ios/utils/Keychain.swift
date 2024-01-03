//
//  Keychain.swift
//  newjeans-bunnies-ios
//
//  Created by HamTory on 1/3/24.
//

import Foundation
import SwiftKeychainWrapper

class Keychain {
    
    enum KeychainKey: String {
        case AccessToken
        case RefrechToken
        case AutoLogin
    }
    
    
    static func setTokenKeychain(_ value: String, forKey keychainKey: KeychainKey) {
        KeychainWrapper.standard.set(value, forKey: keychainKey.rawValue)
    }
    
    static func getTokenKeychainValue(forKey keychainKey: String) -> String? {
        return KeychainWrapper.standard.string(forKey: String)
    }
    
    static func removeTokenKeychain(forKey keychainKey: KeychainKey) {
        KeychainWrapper.standard.removeObject(forKey: keychainKey.rawValue)
    }
    
    static func setAutoLoginKeychain(_ value: Bool, forKey keychainKey: KeychainKey) {
        KeychainWrapper.standard.set(value, forKey: keychainKey.rawValue)
    }
    
    static func getAutoLoginKeychainValue(forKey keychainKey: KeychainKey) -> Bool? {
        return KeychainWrapper.standard.bool(forKey: keychainKey.rawValue)
    }
    
    static func removeAutoLoginKeychain(forKey keychainKey: KeychainKey) {
        KeychainWrapper.standard.removeObject(forKey: keychainKey.rawValue)
    }

    
}
