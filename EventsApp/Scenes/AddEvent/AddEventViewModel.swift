//
//  AddEventViewModel.swift
//  EventsApp
//
//  Created by eslam dweeb on 8/30/20.
//  Copyright © 2020 eslam dweeb. All rights reserved.
//

import Foundation

final class AddEventViewModel {
    
    enum Cell {
        case titleSubtitle(TitleSubtitleCellViewModel)
        case titleImage
    }
    var coordinator:AddEventCoordinator?
    
    func viewDidDisappear() {
        coordinator?.didFinishAddEvent()
    }
}
