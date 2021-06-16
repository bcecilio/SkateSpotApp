//
//  ViewController.swift
//  SkateSpotApp
//
//  Created by Brendon Cecilio on 5/22/21.
//

import UIKit

class ViewController: UIViewController {
    
    private let mainView = MainView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view = mainView
        configureNavigation()
    }
    
    private func configureNavigation() {
        navigationItem.title = "Home"
        navigationController?.navigationBar.prefersLargeTitles = true
    }


}

