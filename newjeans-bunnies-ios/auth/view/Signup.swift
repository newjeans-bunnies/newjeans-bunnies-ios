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
    @State var password: String = ""
    @State var checkPassword: String = ""
    @State var phoneNumber: String = ""
    @State var certificationNumber : String = ""
    
    @State var passwordHideStatus: Bool = false
    @State var checkPasswordHideStatus: Bool = false
    
    let items :[String] = ["KR", "JP", "CN", "US"]
    
    @State var selectCountry: String = "KR"
    
    
    var maxCharacwterCount = 10
    
    
    var body: some View {
        VStack{
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
            
            
            Text("아이디")
                .font(.custom(pretendardSemiBold, size: 17))
            HStack(alignment: .center) {
                TextField("아이디", text: $userId, prompt:Text("아이디").foregroundColor(FieldHintTextColor))
                    .onChange(of: userId) { oldText, newText in
                        if newText.count > userIdmaxCharacterCount {
                            userId = String(newText.prefix(userIdmaxCharacterCount))
                        }
                    }
                    .foregroundColor(FieldTextColor)
                    .font(.custom(pretendardMedium, size: 18))
                    .padding()
                    .background(FieldBackgroundColor)
                    .cornerRadius(13)
                    .textContentType(.name)
                    .keyboardType(.asciiCapable)
                    .textInputAutocapitalization(.never)
                
                
                Button(action: {
                    
                }, label: {
                    Text("중복 확인")
                        .font(.custom(pretendardBold, size: 17))
                        .foregroundColor(FieldHintTextColor)
                        .frame(width: 100)
                }
                )
                .controlSize(.large)
                .buttonStyle(PlainButtonStyle())
                .padding()
                .background(ButtonBackgroundColor)
                .cornerRadius(13)
            }
            
            Text("비밀번호")
                .font(.custom(pretendardSemiBold, size: 17))
            HStack(alignment: .center) {
                if passwordHideStatus{
                    SecureField("비밀번호", text: $password, prompt:Text("비밀번호")
                        .foregroundColor(FieldHintTextColor)
                        .font(.custom(pretendardMedium, size: 18))
                    )
                    .foregroundColor(FieldTextColor)
                    .textInputAutocapitalization(.never)
                    .textContentType(.password)
                    .keyboardType(.asciiCapable)
                } else {
                    TextField("비밀번호", text: $password, prompt:Text("비밀번호")
                        .foregroundColor(FieldHintTextColor)
                        .font(.custom(pretendardMedium, size: 18))
                    )
                    .foregroundColor(FieldTextColor)
                    .textInputAutocapitalization(.never)
                    .textContentType(.password)
                    .keyboardType(.asciiCapable)
                }
                
                Toggle(isOn: $passwordHideStatus){}
                    .toggleStyle(PasswordHideToggleStyle())
                    .padding(.trailing, 9)
                
            }
            .padding()
            .background(FieldBackgroundColor)
            .cornerRadius(13)
            HStack(alignment: .center) {
                if checkPasswordHideStatus{
                    SecureField("비밀번호 확인", text: $checkPassword, prompt:Text("비밀번호 확인")
                        .foregroundColor(FieldHintTextColor)
                        .font(.custom(pretendardMedium, size: 18))
                    )
                    .foregroundColor(FieldTextColor)
                    .textInputAutocapitalization(.never)
                    .textContentType(.password)
                    .keyboardType(.asciiCapable)
                } else {
                    TextField("비밀번호 확인", text: $checkPassword, prompt:Text("비밀번호 확인")
                        .foregroundColor(FieldHintTextColor)
                        .font(.custom(pretendardMedium, size: 18))
                    )
                    .foregroundColor(FieldTextColor)
                    .textInputAutocapitalization(.never)
                    .textContentType(.password)
                    .keyboardType(.asciiCapable)
                }
                
                Toggle(isOn: $checkPasswordHideStatus){}
                    .toggleStyle(PasswordHideToggleStyle())
                    .padding(.trailing, 9)
                
            }
            .padding()
            .background(FieldBackgroundColor)
            .cornerRadius(13)
            
            Text("전화번호")
                .font(.custom(pretendardSemiBold, size: 17))
            HStack(alignment: .center) {
                TextField("전화번호", text: $phoneNumber, prompt:Text("전화번호").foregroundColor(FieldHintTextColor))
                    .onChange(of: phoneNumber) { oldText, newText in
                        if newText.count > phoneNumbermaxCharacterCount {
                            phoneNumber = String(newText.prefix(phoneNumbermaxCharacterCount))
                        }
                    }
                    .foregroundColor(FieldTextColor)
                    .font(.custom(pretendardMedium, size: 18))
                    .padding()
                    .background(FieldBackgroundColor)
                    .cornerRadius(13)
                    .textContentType(.telephoneNumber)
                    .keyboardType(.phonePad)
                
                
                Button(action: {}, label: {
                    Text("인증번호 받기")
                        .font(.custom(pretendardBold, size: 17))
                        .foregroundColor(FieldHintTextColor)
                        .frame(width: 100)
                }
                )
                .controlSize(.large)
                .buttonStyle(PlainButtonStyle())
                .padding()
                .background(ButtonBackgroundColor)
                .cornerRadius(13)
            }
            
            HStack(alignment: .center) {
                TextField("전화번호 인증", text: $certificationNumber, prompt:Text("전화번호 인증")                    .foregroundColor(FieldHintTextColor))
                
                    .onChange(of: certificationNumber) { oldText, newText in
                        if newText.count > certificationNumbermaxCharacterCount {
                            certificationNumber = String(newText.prefix(certificationNumbermaxCharacterCount))
                        }
                    }
                    .foregroundColor(FieldTextColor)
                    .font(.custom(pretendardMedium, size: 18))
                    .padding()
                    .background(FieldBackgroundColor)
                    .cornerRadius(13)
                    .textContentType(.oneTimeCode)
                    .keyboardType(.numberPad)
                
                Button(action: {}, label: {
                    Text("확인")
                        .font(.custom(pretendardBold, size: 17))
                        .foregroundColor(FieldHintTextColor)
                        .frame(width: 100)
                }
                )
                .controlSize(.large)
                .buttonStyle(PlainButtonStyle())
                .padding()
                .background(ButtonBackgroundColor)
                .cornerRadius(13)
            }
            
            Text("나라")
                .font(.custom(pretendardSemiBold, size: 17))
            
            HStack(spacing: 1) {
                ForEach(items, id: \.self) { country in
                    SelectCountryRadioButton(text: country, country: selectCountry)
                }
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .center)
            .background(GroupRadioBackgroundColor)
            .cornerRadius(13)
            
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
            
        }
        .padding(.horizontal, 30)
    }
}

#Preview {
    Signup()
}
