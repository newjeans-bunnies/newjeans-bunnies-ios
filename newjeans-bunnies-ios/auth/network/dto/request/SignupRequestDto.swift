//
//  SignupRequestDto.swift
//  newjeans-bunnies-ios
//
//  Created by HamTory on 1/3/24.
//

import Foundation

struct SignupRequestDto: Codable {
    let userId: String
    let password: String
    let phoneNumber: String
    let country: String
    let language: String
    let birth: String
    
    private enum CodingKeys: CodingKey {
        case userId
        case password
        case phoneNumber
        case country
        case language
        case birth
    }
}
