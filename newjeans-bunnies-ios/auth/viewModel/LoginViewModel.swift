//
//  LoginViewModel.swift
//  newjeans-bunnies-ios
//
//  Created by HamTory on 1/4/24.
//

import Foundation
import Alamofire
import SwiftUI

class LoginViewModel: ObservableObject{
    
    var userId: String = ""
    var password: String = ""
    
    @Published var loginStatus: Bool?
    @Published var autoLoginStatus: Bool = false
    
    func login(){
        let requestDto = LoginRequestDto(userId: self.userId, password: self.password)

        AF.request(URL.login(),
                   method: .post,
                   parameters: requestDto,
                   encoder: JSONParameterEncoder.json,
                   headers: ["Content-Type":"application/json", "Accept":"application/json"]
        )
        .validate(statusCode:200..<201)
        .responseDecodable(of: TokenResponseDto.self) { response in
            switch response.result {
            case .success(let value):
                print("성공하였습니다 :: \(value)")
                withAnimation(.linear(duration: 0.1)){
                    self.loginStatus = true
                }
                
                if self.autoLoginStatus{
                    
                }
            case .failure(let error):
                if let data = response.data,
                    let errorResponse = try? JSONDecoder().decode(ErrorResponseDto.self, from: data){
                    print("실패하였습니다 :: \(errorResponse)" )
                    withAnimation(.linear(duration: 0.1)){
                        self.loginStatus = false
                    }
                } else {
                    withAnimation(.linear(duration: 0.1)){
                        self.loginStatus = false
                    }
                    print("실패하였습니다 :: \(error)" )
                }
                   
            }
        }
    }
    
}
