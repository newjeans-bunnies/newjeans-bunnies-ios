//
//  ContentView.swift
//  newjeans-bunnies-ios
//
//  Created by HamTory on 12/28/23.
//

import SwiftUI
import FlowKit

struct ContentView: View {
    @State var isLaunching: Bool = true

    var body: some View {
        VStack {
          FlowPresenter(rootView: SplashView())
        }
    }
}

#Preview {
    ContentView()
}
