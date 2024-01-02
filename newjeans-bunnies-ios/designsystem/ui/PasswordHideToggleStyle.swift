//
//  PasswordHideToggleStyle.swift
//  newjeans-bunnies-ios
//
//  Created by HamTory on 1/2/24.
//


import SwiftUI

struct PasswordHideToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        // 1
        Button(action: {
            // 2
            configuration.isOn.toggle()

        }, label: {
            HStack {
                Image(configuration.isOn ? "ic_password_show" : "ic_password_hide")
                    .animation(nil)
            }
        })
        .buttonStyle(PlainButtonStyle())

    }
}
