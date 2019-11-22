//
//  RootViewController.swift
//  BarButtonBug
//
//  Created by Simon Frost on 22/11/2019.
//  Copyright © 2019 Orangeninja. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {
    
    @IBAction func presentModallyProgrammaticallyTapped(_ sender: Any) {
        let firstModal = FirstModalViewController()
        let navController = UINavigationController(rootViewController: firstModal)
        present(navController, animated: true, completion: nil)
    }
    
    @IBAction func applyAppearanceTapped(_ sender: Any) {
        UINavigationBar.appearance().backgroundColor = .red
        let alert = UIAlertController(title: "UIAppearance Applied",
                                      message: "Now try the Storyboard flow again",
                                      preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
}
