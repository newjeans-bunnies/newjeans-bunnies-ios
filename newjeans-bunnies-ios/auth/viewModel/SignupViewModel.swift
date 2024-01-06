//
//  SignupViewModel.swift
//  newjeans-bunnies-ios
//
//  Created by HamTory on 1/4/24.
//

import Foundation
import Alamofire
import SwiftUI

class SignupViewModel: ObservableObject {
    
    @Published var country: String = "KR"
    
    //이용약관 동의
    @Published var useAgreementStatus: Bool = false
    
    //개인정보 취급방침 동의
    @Published var informationConsentStatus: Bool = false
    
    
    func signup(){
        
    }
    
}
