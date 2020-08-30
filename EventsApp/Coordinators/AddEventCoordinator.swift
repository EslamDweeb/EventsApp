//
//  AddEventCoordinator.swift
//  EventsApp
//
//  Created by eslam dweeb on 8/30/20.
//  Copyright © 2020 eslam dweeb. All rights reserved.
//

import UIKit


final class AddEventCoordinator:Coordinator {
    private (set) var childcoordinatoors: [Coordinator] = []
    private let navigationController:UINavigationController
    
    init(navigationController:UINavigationController) {
        self.navigationController = navigationController
    }
    func start() {
        let addEventVC = AddEventVC()
        navigationController.present(addEventVC, animated: true, completion: nil)
    }
    
    
}
