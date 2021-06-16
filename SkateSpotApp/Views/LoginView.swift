//
//  LoginView.swift
//  SkateSpotApp
//
//  Created by Brendon Cecilio on 6/16/21.
//

import UIKit

class LoginView: UIView {

    private lazy var usernameField: UITextField = {
        let textfield = UITextField()
        textfield.placeholder = "Username"
        return textfield
    }()
    
    private lazy var passwordField: UITextField = {
        let textfield = UITextField()
        textfield.placeholder = "Password"
        return textfield
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        
    }
}
