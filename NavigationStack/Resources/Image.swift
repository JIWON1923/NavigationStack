//
//  Image.swift
//  NavigationStack
//
//  Created by soi on 1/26/25.
//

import SwiftUI

enum ImageLiterals {
    enum Chevron {
        static let left: UIImage = {
            let image = UIImage(named: "chevron-left")!
            let size = CGSize(width: 20, height: 20)
            return UIGraphicsImageRenderer(size: size).image { _ in
                image.draw(in: CGRect(origin: .zero, size: size))
            }
        }()
    }
}
