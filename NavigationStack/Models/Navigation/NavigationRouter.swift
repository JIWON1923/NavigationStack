//
//  NavigationRouter.swift
//  NavigationStack
//
//  Created by soi on 1/25/25.
//

import Foundation

class Router<Route: Hashable>: ObservableObject {
    @Published var paths: [Route] = []
    
    func push(_ route: Route) {
        paths.append(route)
    }
    
    func pop() {
        guard !paths.isEmpty else { return }
        paths.removeLast()
    }
    
    func popToRootView() {
        paths = []
    }
    
    func popTo(_ routeCase: Route) {
        guard let index = paths.lastIndex(of: routeCase) else { return }
        paths = Array(paths.prefix(through: index))
    }
}
