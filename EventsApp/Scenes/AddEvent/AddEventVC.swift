//
//  AddEventVC.swift
//  EventsApp
//
//  Created by eslam dweeb on 8/30/20.
//  Copyright © 2020 eslam dweeb. All rights reserved.
//

import UIKit

class AddEventVC:UIViewController {
    //MARK:- UIComponent
    lazy var tableView:UITableView = {
       let tableView = UITableView()
        return tableView
    }()
    //MARK:- Properties
    
    var addEventViewModel:AddEventViewModel!
    
    //MARK:- View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        addSubViews()
        addConstraints()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        addEventViewModel.viewDidDisappear()
    }
    //MARK:- Helper Functions
    private func setupView(){
        self.view.backgroundColor = .white
    }
    private func addSubViews(){
        self.view.addSubview(tableView)
    }
    private func addConstraints(){
        tableView.fillSuperview()
    }
}
