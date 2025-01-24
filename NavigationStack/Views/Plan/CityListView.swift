//
//  PlanView.swift
//  NavigationStack
//
//  Created by soi on 1/25/25.
//

import SwiftUI

struct CityListView: View {
    
    @State private var path: [CityDestination] = []
    
    var body: some View {
        NavigationStack(path: $path) {
            List {
                ForEach(cities) { city in
                    NavigationLink(
                        city.name,
                        value: CityDestination.contry(city)
                    )
                }
            }
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
    }
}

#Preview {
    CityListView()
}
