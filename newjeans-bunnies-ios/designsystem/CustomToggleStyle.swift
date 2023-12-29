//
//  iOSCheckboxToggleStyle.swift
//  newjeans-bunnies-ios
//
//  Created by HamTory on 12/28/23.
//

import SwiftUI

struct CustomToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        // 1
        Button(action: {
            // 2
            configuration.isOn.toggle()

        }, label: {
            HStack {
                Image(configuration.isOn ? "check_box_true" : "check_box_falue")
            }
        })
        .buttonStyle(PlainButtonStyle())

    }
}
