//
//  BaseViewController.swift
//  NavigationThings-SwiftUIKit
//
//  Created by Samet Koyuncu on 12.07.2024.
//

import UIKit

class BaseViewController: UIViewController {
    
    var configuration: ViewControllerConfiguration?
    private let stackView = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        guard let config = configuration else { return }
        
        self.view.backgroundColor = config.backgroundColor
        
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .equalSpacing
        stackView.spacing = 16
        
        self.view.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            stackView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ])
        
        for (index, button) in config.buttonTitlesAndActions.enumerated() {
            if !button.title.isEmpty {
                let button = createButton(title: button.title, tag: index, color: button.color)
                stackView.addArrangedSubview(button)
            }
        }
    }
    
    @objc func buttonTapped(sender: UIButton) {
        let index = sender.tag
        configuration?.buttonTitlesAndActions[index].action()
    }
    
    private func createButton(title: String, tag: Int, color: UIColor) -> UIButton {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 18)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = color
        button.layer.cornerRadius = 10
        button.tag = tag
        button.addTarget(self, action: #selector(buttonTapped(sender:)), for: .touchUpInside)
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        return button
    }
}
