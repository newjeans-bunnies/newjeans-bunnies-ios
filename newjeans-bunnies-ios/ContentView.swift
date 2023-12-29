//
//  ContentView.swift
//  newjeans-bunnies-ios
//
//  Created by HamTory on 12/28/23.
//

import SwiftUI

struct ContentView: View {
    @State var isLaunching: Bool = true

    var body: some View {
        VStack {
            if isLaunching {
                SplashView()
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                            withAnimation(.easeIn(duration: 0.2)) {
                                isLaunching = false
                            }
                        }
                    }
            } else {
                Login()
            }
        }
    }
}

#Preview {
    ContentView()
}
