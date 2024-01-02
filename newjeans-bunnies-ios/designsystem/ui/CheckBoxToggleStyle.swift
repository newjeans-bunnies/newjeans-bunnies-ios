//
//  iOSCheckboxToggleStyle.swift
//  newjeans-bunnies-ios
//
//  Created by HamTory on 12/28/23.
//

import SwiftUI

struct CheckBoxToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        // 1
        Button(action: {
            // 2
            configuration.isOn.toggle()

        }, label: {
            HStack {
                Image(configuration.isOn ? "ic_check_box_true" : "ic_check_box_falue")
                    .animation(nil)
            }
        })
        .buttonStyle(PlainButtonStyle())

    }
}
