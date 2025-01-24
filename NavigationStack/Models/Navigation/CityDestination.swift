//
//  CityDestination.swift
//  NavigationStack
//
//  Created by soi on 1/25/25.
//

import Foundation

enum CityDestination: Hashable {
    case contry(City)
    case contryDetail(City)
    case attraction(String)
    
    func hash(into hasher: inout Hasher) {
        switch self {
        case .contry:
            hasher.combine("contry")
        case .contryDetail:
            hasher.combine("contryDetail")
        case .attraction:
            hasher.combine("attraction")
        }
    }
    
    static func == (lhs: CityDestination, rhs: CityDestination) -> Bool {
        switch (lhs, rhs) {
        case (.contry, .contry),
            (.contryDetail, .contryDetail),
            (.attraction, .attraction):
            return true
        default:
            return false
        }
    }
}
