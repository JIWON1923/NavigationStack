//
//  attractionView.swift
//  NavigationStack
//
//  Created by soi on 1/25/25.
//

import SwiftUI

struct AttractionView: View {
    @EnvironmentObject var router: Router<CityDestination>
    let attraction: String
    
    var body: some View {
        VStack(spacing: 20) {
            Text(attraction)
            
            Button("go to contry view") {
                router.popTo(.contry(City()))
            }
            
            Button("pop to root view") {
                router.popToRootView()
            }
        }
        .navigationTitle("Attraction View")
    }
}

#Preview {
    let attraction = "N Seoul Tower"
    AttractionView(attraction: attraction)
}
