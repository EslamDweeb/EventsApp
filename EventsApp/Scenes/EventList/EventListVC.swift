//
//  EventListVC.swift
//  EventsApp
//
//  Created by eslam dweeb on 8/29/20.
//  Copyright © 2020 eslam dweeb. All rights reserved.
//

import UIKit

class EventListVC:UIViewController{
    
    var eventViewModel:EventListViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        configureNavigationBar()
    }
    private func configureNavigationBar(){
        let plusIcone = UIImage(systemName: "plus.circle.fill")
        let rightBarButton = UIBarButtonItem(image: plusIcone, style: .plain, target: self, action: #selector(handelPlusBtnTapped))
        rightBarButton.tintColor = .plusBtn
        navigationItem.rightBarButtonItem = rightBarButton
        self.title = eventViewModel.title
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    @objc private func handelPlusBtnTapped(){
        eventViewModel.handelAddEvent()
    }
}
