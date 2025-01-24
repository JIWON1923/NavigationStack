//
//  ContentView.swift
//  NavigationStack
//
//  Created by soi on 1/24/25.
//

import SwiftUI

enum MainTabs: Hashable {
    case home
    case plan
    case setting
}

struct ContentView: View {
    
    @State private var selectedTab: MainTabs = .home
    
    var body: some View {
        TabView(selection: $selectedTab) {
            Tab("Home", systemImage: "house", value: .home) {
                HomeView()
            }
            Tab("Plan", systemImage: "note", value: .plan) {
                PlanView()
            }
            Tab("Setting", systemImage: "gearshape", value: .plan) {
                SettingView()
            }
        
        }
    }
}

#Preview {
    ContentView()
}
