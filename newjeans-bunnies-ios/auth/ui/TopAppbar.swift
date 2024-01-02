//
//  TopAppbar.swift
//  newjeans-bunnies-ios
//
//  Created by HamTory on 12/30/23.
//

import SwiftUI
import FlowKit


struct TopAppbar: View {
    @Flow var navigation
    var body: some View{
        HStack{
            Button(action: {
                navigation.pop()
            }, label: {
                Image("ic_arrow_back")
                    .resizable()
                    .frame(width:10, height: 18)
            }).frame(alignment: .leading)
            Text("회원가입")
                .font(.custom(pretendardBold, size: 20))
        }.frame(maxWidth: .infinity, maxHeight: 50,alignment: .center)
        
    }
    
}


#Preview {
    TopAppbar()
}
