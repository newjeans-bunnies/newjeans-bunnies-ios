//
//  SelectCountryRadioButton.swift
//  newjeans-bunnies-ios
//
//  Created by HamTory on 1/2/24.
//

import SwiftUI

struct SelectCountryRadioButton: View {
    
    @StateObject var viewModel = SignupViewModel()
    
    let text: String
    
    init(text: String){
        self.text = text
    }
    var body: some View{
        Button(action: {
            viewModel.country = text
        }, label: {
            Text(text)
                .font(.custom(pretendardBold, size: 20))
                .foregroundColor(Color("RadioButtonTextColor"))
        })
        .padding(.horizontal, 20)
        .padding(.vertical, 13)
        .background(text == viewModel.country ? Color("ButtonBackgroundColor") : Color("GroupRadioBackgroundColor"))
        .cornerRadius(13)
    }
}


#Preview{
    SelectCountryRadioButton(text: "KR")
}
