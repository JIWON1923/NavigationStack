//
//  City.swift
//  NavigationStack
//
//  Created by soi on 1/25/25.
//

import Foundation

struct City: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let country: String
    let attractions: [String]
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    static func == (lhs: Self, rhs: Self) -> Bool {
        lhs.id == rhs.id
    }
    
    init(name: String, country: String, attractions: [String]) {
        self.name = name
        self.country = country
        self.attractions = attractions
    }
    
    init() {
        name = ""
        country = ""
        attractions = []
    }
}

var cities = [
    City(name: "Seoul", country: "South Korea", attractions: ["N Seoul Tower", "Gyeongbokgung Palace", "Bukchon Hanok Village"]),
    City(name: "Tokyo", country: "Japan", attractions: ["Tokyo Tower", "Senso-ji Temple", "Shinjuku Gyoen"]),
    City(name: "Paris", country: "France", attractions: ["Eiffel Tower", "Louvre Museum", "Notre-Dame Cathedral"]),
    City(name: "New York", country: "USA", attractions: ["Statue of Liberty", "Central Park", "Times Square"]),
    City(name: "London", country: "UK", attractions: ["Big Ben", "Tower Bridge", "Buckingham Palace"]),
    City(name: "Beijing", country: "China", attractions: ["Great Wall of China", "Forbidden City", "Temple of Heaven"]),
    City(name: "Sydney", country: "Australia", attractions: ["Sydney Opera House", "Bondi Beach", "Harbour Bridge"]),
    City(name: "Rome", country: "Italy", attractions: ["Colosseum", "Pantheon", "Trevi Fountain"]),
    City(name: "Berlin", country: "Germany", attractions: ["Brandenburg Gate", "Berlin Wall", "Museum Island"]),
    City(name: "Bangkok", country: "Thailand", attractions: ["Grand Palace", "Wat Arun", "Chatuchak Market"]),
    City(name: "Dubai", country: "UAE", attractions: ["Burj Khalifa", "Palm Jumeirah", "Dubai Mall"]),
    City(name: "Moscow", country: "Russia", attractions: ["Red Square", "Kremlin", "Saint Basil's Cathedral"]),
    City(name: "Los Angeles", country: "USA", attractions: ["Hollywood Sign", "Santa Monica Pier", "Griffith Observatory"]),
    City(name: "Toronto", country: "Canada", attractions: ["CN Tower", "Royal Ontario Museum", "Casa Loma"]),
    City(name: "Singapore", country: "Singapore", attractions: ["Marina Bay Sands", "Gardens by the Bay", "Sentosa Island"]),
    City(name: "Mexico City", country: "Mexico", attractions: ["Zócalo", "Chapultepec Park", "Frida Kahlo Museum"]),
    City(name: "Istanbul", country: "Turkey", attractions: ["Hagia Sophia", "Blue Mosque", "Grand Bazaar"]),
    City(name: "Hong Kong", country: "China", attractions: ["Victoria Peak", "Tian Tan Buddha", "Ladies Market"]),
    City(name: "Barcelona", country: "Spain", attractions: ["Sagrada Familia", "Park Güell", "La Rambla"]),
    City(name: "Amsterdam", country: "Netherlands", attractions: ["Anne Frank House", "Rijksmuseum", "Van Gogh Museum"])
]
