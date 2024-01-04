//
//  ErrorResponseDto.swift
//  newjeans-bunnies-ios
//
//  Created by HamTory on 1/4/24.
//

import Foundation

struct ErrorResponseDto: Codable {
    
    let status: Int
    let message: String

    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        status = (try? values.decode(Int.self, forKey: .status)) ?? 404
        message = (try? values.decode(String.self, forKey: .message)) ?? "Not Found"
    }
}
