//
//  PlanView.swift
//  NavigationStack
//
//  Created by soi on 1/25/25.
//

import SwiftUI

struct CityListView: View {
    
    @StateObject private var router = Router<CityDestination>()
    
    var body: some View {
        NavigationStack(path: $router.paths) {
            List {
                ForEach(cities) { city in
                    NavigationLink(
                        city.name,
                        value: CityDestination.contry(city)
                    )
                }
            }
            .navigationTitle("City List View")
            .navigationDestination(for: CityDestination.self) { destination in
                switch destination {
                case .contry(let city):
                    ContryView(city: city)
                case .contryDetail(let city):
                    ContryDetailView(city: city)
                case .attraction(let attraction):
                    AttractionView(attraction: attraction)
                }
            }
        }
        .environmentObject(router)
    }
}

#Preview {
    CityListView()
}
