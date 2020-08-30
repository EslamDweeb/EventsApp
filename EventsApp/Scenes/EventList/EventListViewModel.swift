//
//  EventListViewModel.swift
//  EventsApp
//
//  Created by eslam dweeb on 8/30/20.
//  Copyright © 2020 eslam dweeb. All rights reserved.
//

import Foundation

final class EventListViewModel {
    let title = "Events"
    var coordinator:EventListCoordinator?
    
    func handelAddEvent() {
        coordinator?.startAddEvent()
    }
}
