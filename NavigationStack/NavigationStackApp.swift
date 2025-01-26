//
//  NavigationStackApp.swift
//  NavigationStack
//
//  Created by soi on 1/24/25.
//

import SwiftUI

@main
struct NavigationStackApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear {
                    UINavigationBar.appearance().backIndicatorImage = ImageLiterals.Chevron.left
                    UINavigationBar.appearance().backIndicatorTransitionMaskImage = ImageLiterals.Chevron.left
                    UINavigationBar.appearance().tintColor = .red
                }
        }
    }
}
