//
//  LoginResponseDto.swift
//  newjeans-bunnies-ios
//
//  Created by HamTory on 1/3/24.
//

import Foundation

struct TokenResponseDto: Codable {
    
    let accessToken: String
    let refreshToken: String
    let expiredAt: String
    let authority: String
    
    enum CodingKeys: CodingKey {
        case accessToken
        case refreshToken
        case expiredAt
        case authority
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        accessToken = (try? values.decode(String.self, forKey: .accessToken)) ?? ""
        refreshToken = (try? values.decode(String.self, forKey: .refreshToken)) ?? ""
        expiredAt = (try? values.decode(String.self, forKey: .expiredAt)) ?? ""
        authority = (try? values.decode(String.self, forKey: .authority)) ?? ""
    }
}
