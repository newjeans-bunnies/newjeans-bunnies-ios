//
//  LoginRequestDto.swift
//  newjeans-bunnies-ios
//
//  Created by HamTory on 1/3/24.
//

import Foundation

struct LoginRequestDto: Encodable{
    let userId: String
    let password: String
}
