//
//  HTTPClient.swift
//  newjeans-bunnies-ios
//
//  Created by HamTory on 1/3/24.
//

import Foundation
import Alamofire

var login = AF.request(URL.login(), method: .get, parameters: LoginRequestDto)

var signup = AF.request(URL.signup(), method: .post, parameters: SignupRequestDto)


var refrech = AF.request(
                URL.refrech(),
                method: .patch,
                headers: ["Content-Type":"application/json", "Accept":"application/json", "refresh-token":Keychain.getTokenKeychainValue(forKey: Keychain.KeychainKey.RefrechToken.rawValue) ?? ""])
