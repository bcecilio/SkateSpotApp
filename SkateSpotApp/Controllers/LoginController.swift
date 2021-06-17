//
//  LoginController.swift
//  SkateSpotApp
//
//  Created by Brendon Cecilio on 6/16/21.
//

import UIKit

class LoginController: UIViewController {
    
    private let loginView = LoginView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view = loginView
    }
    

}
