//
//  FirstModalViewController.swift
//  BarButtonBug
//
//  Created by Simon Frost on 22/11/2019.
//  Copyright © 2019 Orangeninja. All rights reserved.
//

import UIKit

class FirstModalViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "First Modal"
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: nil)
        view.backgroundColor = .white

        let button = UIButton()
        button.setTitle("Another Modal", for: .normal)
        button.setTitleColor(view.tintColor, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }
    
    @objc func buttonTapped() {
        let nextViewController = SecondModalViewController()
        let navigationController = UINavigationController(rootViewController: nextViewController)
        present(navigationController, animated: true, completion: nil)
    }
    
}
