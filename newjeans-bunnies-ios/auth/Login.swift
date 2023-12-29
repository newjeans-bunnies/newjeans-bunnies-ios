//
//  Login.swift
//  newjeans-bunnies-ios
//
//  Created by HamTory on 12/28/23.
//


import SwiftUI


struct Login: View {
    @State var userId: String = ""
    @State var password: String = ""
    @State var autoLoginStatus: Bool = false

    var body: some View {
        VStack {
            Image("ic_app")
                .resizable()
                .frame(width:200, height: 100)
                .padding(.bottom, 90)

            HStack(alignment: .center) {
                Image("ic_id")
                    .padding(.leading, 5)
                TextField("아이디", text: $userId, prompt:Text("아이디")
                    .foregroundColor(FieldHintTextColor)
                    .font(.custom(pretendardMedium, size: 18))
                )
                .padding(.leading, 6)

            }
                .padding()
                .background(FieldBackgroundColor)
                .cornerRadius(13)
            
            
            HStack(alignment: .center) {
                Image("ic_password")
                    .padding(.leading, 7)
                TextField("비밀번호", text: $password, prompt:Text("비밀번호")
                    .foregroundColor(FieldHintTextColor)
                    .font(.custom(pretendardMedium, size: 18))
                )
                .padding(.leading, 6)
            }
            
                .padding()
                .background(FieldBackgroundColor)
                .cornerRadius(13)
            
            Text("아이디와 비밀번호가 일치하지 않습니다")
                .padding(.leading, 10)
                .padding(.top, 3)
                .font(.custom(pretendardMedium, size: 14))
                .foregroundColor(ErrorTextColor)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom, 20)
            
            
            HStack(alignment: .center){
                Toggle(isOn: $autoLoginStatus){}
                    .toggleStyle(CustomToggleStyle())
                Text("로그인 유지하기")
                    .font(.custom(pretendardSemiBold, size: 16))
            }
            .padding(.trailing, 180)
            .padding(.bottom, 5)
            .frame(maxWidth: .infinity)
              Button(action: {
                  
              }, label: {
                  Text("로그인")
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
            
            Text("계정 만들기")
                .font(.custom(pretendardMedium, size: 16))
                .padding(.top, 10)
                .onTapGesture {
                    print("Signup")
                }
            
        }.padding(.horizontal, 30)


    }
}

#Preview {
    Login()
}
