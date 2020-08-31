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
    var parentCoordinator:EventListCoordinator?
    init(navigationController:UINavigationController) {
        self.navigationController = navigationController
    }
    func start() {
        let addEventVC = AddEventVC()
        let viewModel = AddEventViewModel()
        viewModel.coordinator = self
        addEventVC.addEventViewModel = viewModel
        navigationController.present(addEventVC, animated: true, completion: nil)
    }
    func didFinishAddEvent(){
        parentCoordinator?.childDidFinish(self)
    }
}
