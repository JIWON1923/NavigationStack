//
//  ContentView.swift
//  NavigationStack
//
//  Created by soi on 1/24/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedTab: MainTabs = .home
    
    var body: some View {
        TabView(selection: $selectedTab) {
            Tab("Home", systemImage: "house", value: .home) {
                HomeView()
            }
            Tab("Plan", systemImage: "note", value: .plan) {
                CityListView()
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
