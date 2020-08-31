//
//  TitleSubtitleViewModel.swift
//  EventsApp
//
//  Created by eslam dweeb on 8/31/20.
//  Copyright © 2020 eslam dweeb. All rights reserved.
//

import Foundation
final class TitleSubtitleCellViewModel {
    let title:String
    private(set) var subtitle:String
    let placeholder:String
    
    init(title:String,subtitle:String,placeholder:String) {
        self.title = title
        self.subtitle = subtitle
        self.placeholder = placeholder
    }
}
