//
//  LoginRequestDto.swift
//  newjeans-bunnies-ios
//
//  Created by HamTory on 1/3/24.
//

import Foundation


struct LoginRequestDto: Codable {
    let userId: String
    let password: String
    
    private enum CodingKeys: CodingKey {
        case userId
        case password
    }
}
