//
//  attractionView.swift
//  NavigationStack
//
//  Created by soi on 1/25/25.
//

import SwiftUI

struct AttractionView: View {
    let attraction: String
    
    var body: some View {
        Text(attraction)
    }
}

#Preview {
    let attraction = "N Seoul Tower"
    AttractionView(attraction: attraction)
}
