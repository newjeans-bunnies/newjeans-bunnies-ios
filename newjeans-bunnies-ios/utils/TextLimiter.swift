//
//  TextLimiter.swift
//  newjeans-bunnies-ios
//
//  Created by HamTory on 1/2/24.
//
import SwiftUI


class TextLimiter: ObservableObject {
    
    private let limit: Int
    
    init(limit: Int) {
        self.limit = limit
    }
    
    @Published var value = "" {
        didSet {
            if value.count > self.limit {
                value = String(value.prefix(self.limit))
            }
            self.hasReachedLimit = value.count == self.limit
        }
    }
    
    @Published var hasReachedLimit = false
}
