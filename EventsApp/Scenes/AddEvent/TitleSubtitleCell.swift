//
//  TitleSubtitleCell.swift
//  EventsApp
//
//  Created by eslam dweeb on 8/31/20.
//  Copyright © 2020 eslam dweeb. All rights reserved.
//

import UIKit

final class TitleSubtitleCell:UITableViewCell{
    private let titleLabel = UILabel()
    private let subtitleTextField = UITextField()
    lazy private var verticalStack:VerticalStackView = {
        let stackView = VerticalStackView(arrangedSubviews: [
            titleLabel,subtitleTextField
        ])
        return stackView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
        addSubViews()
        addConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func update(with viewModel:TitleSubtitleCellViewModel){
        titleLabel.text = viewModel.title
        subtitleTextField.text = viewModel.subtitle
        subtitleTextField.placeholder = viewModel.placeholder
    }
    private func setupViews(){
        titleLabel.font = .systemFont(ofSize: 22, weight: .medium)
        subtitleTextField.font = .systemFont(ofSize: 20, weight: .medium)
    }
    private func addSubViews(){
        addSubview(verticalStack)
    }
    private func addConstraints(){
        verticalStack.fillSuperview(padding: .init(top: 20, left: 20, bottom: 20, right: 20))
    }
}
