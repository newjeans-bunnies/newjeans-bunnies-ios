//
//  SelectCountryRadioButton.swift
//  newjeans-bunnies-ios
//
//  Created by HamTory on 1/2/24.
//

import SwiftUI

struct SelectCountryRadioButton: View {
        
    let text: String
    let country: String
    
    init(
        text: String,
        country: String
    ){
        self.text = text
        self.country = country
    }
    var body: some View{
        Button(action: {
            
        }, label: {
            Text(text)
                .font(.custom(pretendardBold, size: 17))
                .foregroundColor(RadioButtonTextColor)
        })
        .padding()
        .background(ButtonBackgroundColor)
        .cornerRadius(13)
    }
}


#Preview{
    SelectCountryRadioButton(text: "KR", country: "KR")
}
