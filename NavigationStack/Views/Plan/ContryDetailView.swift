//
//  ContryDetailView.swift
//  NavigationStack
//
//  Created by soi on 1/25/25.
//

import SwiftUI
struct ContryDetailView: View {
    let city: City
    
    var body: some View {
        VStack {
            Text("\(city.name)의 명소")
                .font(.title)
            
            List {
                ForEach(city.attractions, id: \.self) { attraction in
                    NavigationLink(
                        attraction,
                        value: CityDestination.attraction(attraction)
                    )
                }
            }
        }
    }
}

#Preview {
    let city = City(
        name: "Seoul",
        country: "South Korea",
        attractions: ["N Seoul Tower", "Gyeongbokgung Palace", "Bukchon Hanok Village"]
    )
    ContryDetailView(city: city)
}
