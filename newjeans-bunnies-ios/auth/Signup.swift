//
//  Signup.swift
//  newjeans-bunnies-ios
//
//  Created by HamTory on 12/28/23.
//

import SwiftUI
import FlowKit

struct Signup: View {
    @Flow var navigation
    @State var userId: String = ""
    
    var body: some View {
        VStack{
            TopAppbar()
            
            Text("아이디")
                .font(.custom(pretendardSemiBold, size: 17))
            HStack(alignment: .center) {
                TextField("아이디", text: $userId, prompt:Text("아이디")
                    .foregroundColor(FieldHintTextColor)
                    .font(.custom(pretendardMedium, size: 18))
                )
            }
            .padding()
            .background(FieldBackgroundColor)
            .cornerRadius(13)
            
            Text("비밀번호")
                .font(.custom(pretendardSemiBold, size: 17))
            HStack(alignment: .center) {
                TextField("비밀번호", text: $userId, prompt:Text("비밀번호")
                    .foregroundColor(FieldHintTextColor)
                    .font(.custom(pretendardMedium, size: 18))
                )
            }
            .padding()
            .background(FieldBackgroundColor)
            .cornerRadius(13)
            HStack(alignment: .center) {
                TextField("비밀번호확인", text: $userId, prompt:Text("비밀번호 확인")
                    .foregroundColor(FieldHintTextColor)
                    .font(.custom(pretendardMedium, size: 18))
                )
            }
            .padding()
            .background(FieldBackgroundColor)
            .cornerRadius(13)
            
            Text("전화번호")
                .font(.custom(pretendardSemiBold, size: 17))
            HStack(alignment: .center) {
                TextField("전화번호", text: $userId, prompt:Text("전화번호")
                    .foregroundColor(FieldHintTextColor)
                    .font(.custom(pretendardMedium, size: 18))
                )
            }
            .padding()
            .background(FieldBackgroundColor)
            .cornerRadius(13)
            HStack(alignment: .center) {
                TextField("전화번호 인증", text: $userId, prompt:Text("전화번호 인증")
                    .foregroundColor(FieldHintTextColor)
                    .font(.custom(pretendardMedium, size: 18))
                )
            }
            .padding()
            .background(FieldBackgroundColor)
            .cornerRadius(13)
            
            Text("나라")
                .font(.custom(pretendardSemiBold, size: 17))
            
            
            Button(action: {
                
            }, label: {
                Text("계정 만들기")
                    .font(.custom(pretendardBold, size: 17))
                    .foregroundColor(ButtonTextColor)
                    .frame(maxWidth: .infinity)
            }
            )
            .controlSize(.large)
            .buttonStyle(PlainButtonStyle())
            .padding()
            .background(ButtonBackgroundColor)
            .cornerRadius(13)
            
        }.padding(.horizontal, 30)
    }
}

#Preview {
    Signup()
}
