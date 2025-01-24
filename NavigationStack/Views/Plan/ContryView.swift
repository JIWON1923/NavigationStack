//
//  ContryView.swift
//  NavigationStack
//
//  Created by soi on 1/25/25.
//

import SwiftUI

struct ContryView: View {
    let city: City
    
    var body: some View {
        
        VStack {
            Text("Welcome to \(city.country)")
            
            NavigationLink(
                city.name,
                value: CityDestination.contryDetail(city)
            )
        }
        .navigationTitle("Contry View")
    }
}

#Preview {
    let city = City(
        name: "Seoul",
        country: "South Korea",
        attractions: ["N Seoul Tower", "Gyeongbokgung Palace", "Bukchon Hanok Village"]
    )
    
    ContryView(city: city)
}
