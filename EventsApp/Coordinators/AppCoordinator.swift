//
//  AppCoordinator.swift
//  EventsApp
//
//  Created by eslam dweeb on 8/29/20.
//  Copyright © 2020 eslam dweeb. All rights reserved.
//

import UIKit

protocol Coordinator {
    var childcoordinatoors:[Coordinator] { get }
    func start()
}

final class AppCoordinator:Coordinator {
    
    private (set) var childcoordinatoors: [Coordinator] = []
    
    private let window:UIWindow
    
    init(window:UIWindow) {
        self.window = window
    }
    
    func start() {
        let navigationController = UINavigationController()
        
        let eventListCoordinator = EventListCoordinator(navigationController: navigationController)
        childcoordinatoors.append(eventListCoordinator)
        eventListCoordinator.start()
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
}
