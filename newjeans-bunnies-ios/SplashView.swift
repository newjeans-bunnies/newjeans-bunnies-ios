//
//  SplashView.swift
//  newjeans-bunnies-ios
//
//  Created by HamTory on 12/28/23.
//

import SwiftUI
import FlowKit

struct SplashView: View {
    @State var isLaunching: Bool = true
    @Flow var navigation
    
    var body: some View {
        VStack{
            Image("ic_app")
                .resizable()
                .frame(width:200, height: 92)
        }.onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                navigation.push(Login())
            }
        }
    }
}

#Preview {
    SplashView()
}
