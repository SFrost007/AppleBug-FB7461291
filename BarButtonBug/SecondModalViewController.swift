//
//  SecondModalViewController.swift
//  BarButtonBug
//
//  Created by Simon Frost on 22/11/2019.
//  Copyright © 2019 Orangeninja. All rights reserved.
//

import UIKit

class SecondModalViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Second Modal"
        view.backgroundColor = .white
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .cancel, target: nil, action: nil)
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .save, target: nil, action: nil)
        
        let label = UILabel()
        label.numberOfLines = 0
        label.textAlignment = .center
        label.text = "Note: In this case the BarButtonItems are laid out correctly, and the navigation bar has the correct height."
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        NSLayoutConstraint.activate([
            label.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16),
            label.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }

}
