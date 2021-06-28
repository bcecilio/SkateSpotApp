//
//  LoginController.swift
//  SkateSpotApp
//
//  Created by Brendon Cecilio on 6/16/21.
//

import UIKit
import FirebaseAuth

class LoginController: UIViewController {
    
    private let loginView = LoginView()
    private var datebaseService = DatabaseService()
    private var authSession = AuthenticationSession()

    override func viewDidLoad() {
        super.viewDidLoad()
        view = loginView
    }
    

}
