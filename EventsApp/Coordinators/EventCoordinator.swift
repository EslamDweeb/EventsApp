//
//  EventCoordinator.swift
//  EventsApp
//
//  Created by eslam dweeb on 8/29/20.
//  Copyright © 2020 eslam dweeb. All rights reserved.
//

import UIKit

final class EventListCoordinator:Coordinator{
    private (set) var childcoordinatoors: [Coordinator] = []
    private let navigationController:UINavigationController
    
    init(navigationController:UINavigationController) {
        self.navigationController = navigationController
    }
    func start() {
        let eventListVC = EventListVC()
        let viewModel = EventListViewModel()
        viewModel.coordinator = self
        eventListVC.eventViewModel = viewModel
        navigationController.setViewControllers([eventListVC], animated: false)
    }
    func startAddEvent(){
        let addEventCoordinator = AddEventCoordinator(navigationController: navigationController)
        childcoordinatoors.append(addEventCoordinator)
        addEventCoordinator.start()
    }
    
}
