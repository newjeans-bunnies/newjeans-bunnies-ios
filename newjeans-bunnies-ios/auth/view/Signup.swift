//
//  Signup.swift
//  newjeans-bunnies-ios
//
//  Created by HamTory on 12/28/23.
//

import SwiftUI
import FlowKit


struct Signup: View {
    
    @StateObject var viewModel = SignupViewModel()
    
    @Flow var navigation
    
    @State var userId: String = ""
    @State var password: String = ""
    @State var checkPassword: String = ""
    @State var phoneNumber: String = ""
    @State var certificationNumber : String = ""
    @State var dirth: String = ""
    
    @State var passwordHideStatus: Bool = false
    @State var checkPasswordHideStatus: Bool = false
    
    let items :[String] = ["KR", "JP", "CN", "US"]
    
    @State var selectCountry: String = "KR"
    
    
    var maxCharacwterCount = 10
    
    
    var body: some View {
        VStack {
            ZStack {
                Button(action: {
                    navigation.pop()
                }, label: {
                    Image("ic_arrow_back")
                        .resizable()
                        .frame(width:10, height: 18)
                }).frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 30)
                
                Text("회원가입")
                    .font(.custom(pretendardBold, size: 20))
                
            }.frame(maxWidth: .infinity, maxHeight: 50,alignment: .center)
            ScrollView(.vertical, showsIndicators: false){
                Text("아이디")
                    .font(.custom(pretendardSemiBold, size: 17))
                    .frame(maxWidth: .infinity, alignment: .leading)

                HStack(alignment: .center) {
                    TextField("아이디", text: $userId, prompt:Text("아이디").foregroundColor(Color("FieldHintTextColor")))
                        .onChange(of: userId) { oldText, newText in
                            if newText.count > userIdmaxCharacterCount {
                                userId = String(newText.prefix(userIdmaxCharacterCount))
                            }
                        }
                        .foregroundColor(Color("FieldTextColor"))
                        .font(.custom(pretendardMedium, size: 18))
                        .padding()
                        .background(Color("FieldBackgroundColor"))
                        .cornerRadius(13)
                        .textContentType(.name)
                        .keyboardType(.asciiCapable)
                        .textInputAutocapitalization(.never)
                    
                    
                    Button(action: {
                        
                    }, label: {
                        Text("중복 확인")
                            .font(.custom(pretendardBold, size: 17))
                            .foregroundColor(Color("ButtonTextColor"))
                            .frame(width: 100)
                    }
                    )
                    .controlSize(.large)
                    .buttonStyle(PlainButtonStyle())
                    .padding()
                    .background(Color("ButtonBackgroundColor"))
                    .cornerRadius(13)
                }
                
                
                Text("비밀번호")
                    .font(.custom(pretendardSemiBold, size: 17))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top, 30)
                
                HStack(alignment: .center) {
                    if passwordHideStatus{
                        SecureField("비밀번호", text: $password, prompt:Text("비밀번호")
                            .foregroundColor(Color("FieldHintTextColor"))
                            .font(.custom(pretendardMedium, size: 18))
                        )
                        .foregroundColor(Color("FieldTextColor"))
                        .textInputAutocapitalization(.never)
                        .textContentType(.password)
                        .keyboardType(.asciiCapable)
                    } else {
                        TextField("비밀번호", text: $password, prompt:Text("비밀번호")
                            .foregroundColor(Color("FieldHintTextColor"))
                            .font(.custom(pretendardMedium, size: 18))
                        )
                        .foregroundColor(Color("FieldTextColor"))
                        .textInputAutocapitalization(.never)
                        .textContentType(.password)
                        .keyboardType(.asciiCapable)
                    }
                    
                    Toggle(isOn: $passwordHideStatus){}
                        .toggleStyle(PasswordHideToggleStyle())
                        .padding(.trailing, 9)
                    
                }
                .padding()
                .background(Color("FieldBackgroundColor"))
                .cornerRadius(13)
                
                HStack(alignment: .center) {
                    if checkPasswordHideStatus{
                        SecureField("비밀번호 확인", text: $checkPassword, prompt:Text("비밀번호 확인")
                            .foregroundColor(Color("FieldHintTextColor"))
                            .font(.custom(pretendardMedium, size: 18))
                        )
                        .foregroundColor(Color("FieldTextColor"))
                        .textInputAutocapitalization(.never)
                        .textContentType(.password)
                        .keyboardType(.asciiCapable)
                    } else {
                        TextField("비밀번호 확인", text: $checkPassword, prompt:Text("비밀번호 확인")
                            .foregroundColor(Color("FieldHintTextColor"))
                            .font(.custom(pretendardMedium, size: 18))
                        )
                        .foregroundColor(Color("FieldTextColor"))
                        .textInputAutocapitalization(.never)
                        .textContentType(.password)
                        .keyboardType(.asciiCapable)
                    }
                    
                    Toggle(isOn: $checkPasswordHideStatus){}
                        .toggleStyle(PasswordHideToggleStyle())
                        .padding(.trailing, 9)
                    
                }
                .padding()
                .background(Color("FieldBackgroundColor"))
                .cornerRadius(13)
                
                Text("전화번호")
                    .font(.custom(pretendardSemiBold, size: 17))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top, 30)
                
                HStack(alignment: .center) {
                    TextField("전화번호", text: $phoneNumber, prompt:Text("전화번호").foregroundColor(Color("FieldHintTextColor")))
                        .onChange(of: phoneNumber) { oldText, newText in
                            if newText.count > phoneNumbermaxCharacterCount {
                                phoneNumber = String(newText.prefix(phoneNumbermaxCharacterCount))
                            }
                        }
                        .foregroundColor(Color("FieldTextColor"))
                        .font(.custom(pretendardMedium, size: 18))
                        .padding()
                        .background(Color("FieldBackgroundColor"))
                        .cornerRadius(13)
                        .textContentType(.telephoneNumber)
                        .keyboardType(.phonePad)
                    
                    
                    Button(action: {}, label: {
                        Text("인증번호 받기")
                            .font(.custom(pretendardSemiBold, size: 17))
                            .foregroundColor(Color("ButtonTextColor"))
                            .frame(width: 100)
                    }
                    )
                    .controlSize(.large)
                    .buttonStyle(PlainButtonStyle())
                    .padding()
                    .background(Color("ButtonBackgroundColor"))
                    .cornerRadius(13)
                }
                
                HStack(alignment: .center) {
                    TextField("인증번호", text: $certificationNumber, prompt:Text("인증번호")
                        .foregroundColor(Color("FieldHintTextColor")))
                        .onChange(of: certificationNumber) { oldText, newText in
                            if newText.count > certificationNumbermaxCharacterCount {
                                certificationNumber = String(newText.prefix(certificationNumbermaxCharacterCount))
                            }
                        }
                        .foregroundColor(Color("FieldTextColor"))
                        .font(.custom(pretendardMedium, size: 18))
                        .padding()
                        .background(Color("FieldBackgroundColor"))
                        .cornerRadius(13)
                        .textContentType(.oneTimeCode)
                        .keyboardType(.numberPad)
                    
                    Button(action: {}, label: {
                        Text("확인")
                            .font(.custom(pretendardSemiBold, size: 17))
                            .foregroundColor(Color("ButtonTextColor"))
                            .frame(width: 100)
                    }
                    )
                    .controlSize(.large)
                    .buttonStyle(PlainButtonStyle())
                    .padding()
                    .background(Color("ButtonBackgroundColor"))
                    .cornerRadius(13)
                }
                
                Text("나라")
                    .font(.custom(pretendardSemiBold, size: 17))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top, 30)
                
                HStack(spacing:7) {
                    ForEach(items, id: \.self) { country in
                        SelectCountryRadioButton(text: country)
                    }
                }
                .padding(.vertical, 5)
                .frame(maxWidth: .infinity, alignment: .center)
                .background(Color("GroupRadioBackgroundColor"))
                .cornerRadius(13)
                
                Text("생년월일")
                    .font(.custom(pretendardSemiBold, size: 17))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top, 30)
                
                TextField("생년월일", text: $dirth, prompt:Text("YYYY-MM-DD").foregroundColor(Color("FieldHintTextColor")))
                    .onChange(of: dirth) { oldText, newText in
                        if newText.count > birthMaxCharacterCount {
                            dirth = String(newText.prefix(birthMaxCharacterCount))
                        }
                    }
                    .foregroundColor(Color("FieldTextColor"))
                    .font(.custom(pretendardMedium, size: 18))
                    .padding()
                    .background(Color("FieldBackgroundColor"))
                    .cornerRadius(13)
                    .textContentType(.birthdate)
                    .textInputAutocapitalization(.never)
                
                
                
                
                Text("아래 약관에 모두 동의 합니다")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.custom(pretendardBold, size: 16))
                    .padding(.top, 20)
                    .padding(.bottom, 8)
                HStack{
                    Toggle(isOn: $viewModel.useAgreementStatus){}
                        .toggleStyle(CheckBoxToggleStyle())
                    Text("이용약관 동의")
                        .font(.custom(pretendardRegular, size: 17))
                        .padding(.leading, 10)
                    Text("보기 >")
                        .font(.custom(pretendardRegular, size: 17))
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }.frame(maxWidth: .infinity, alignment: .leading)
                
                HStack{
                    Toggle(isOn: $viewModel.informationConsentStatus){}
                        .toggleStyle(CheckBoxToggleStyle())
                    Text("개인정보 취급방침 동의")
                        .font(.custom(pretendardRegular, size: 17))
                        .padding(.leading, 10)
                    Text("보기 >")
                        .font(.custom(pretendardRegular, size: 17))
                        .frame(maxWidth: .infinity, alignment: .trailing)

                }.frame(maxWidth: .infinity, alignment: .leading)                        .lineLimit(1)
                    .padding(.bottom, 20)
                
                Button(action: {
                    viewModel.signup()
                }, label: {
                    Text("계정 만들기")
                        .font(.custom(pretendardBold, size: 17))
                        .foregroundColor(Color("ButtonTextColor"))
                        .frame(maxWidth: .infinity)
                }
                )
                .controlSize(.large)
                .buttonStyle(PlainButtonStyle())
                .padding()
                .background(Color("ButtonBackgroundColor"))
                .cornerRadius(13)
                .padding(.bottom, 10)
                
            }
            .padding(.horizontal, 30)
            .navigationBarHidden(true)
        }
    }
}

#Preview {
    Signup()
}
