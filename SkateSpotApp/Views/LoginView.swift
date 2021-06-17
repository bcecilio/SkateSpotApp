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
        textfield.backgroundColor = .white
        textfield.layer.cornerRadius = 10
        return textfield
    }()
    
    private lazy var passwordField: UITextField = {
        let textfield = UITextField()
        textfield.placeholder = "Password"
        textfield.backgroundColor = .white
        textfield.layer.cornerRadius = 10
        return textfield
    }()
    
    public lazy var signUpButton: UIButton = {
        let button = UIButton()
        button.setTitle("Don't have an account? Sign Up Here.", for: .normal)
        button.tintColor = .blue
        button.backgroundColor = .red
        return button
    }()
    
    public lazy var loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("Log in", for: .normal)
        button.tintColor = .white
        button.backgroundColor = .green
        return button
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
        backgroundColor = .white
        setupUserField()
        setupPasswordField()
        setupSignupButton()
        setupLoginButton()
    }
    
    private func setupUserField() {
        addSubview(usernameField)
        usernameField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            usernameField.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 100),
            usernameField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 70),
            usernameField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -70),
        ])
    }
    
    private func setupPasswordField() {
        addSubview(passwordField)
        passwordField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            passwordField.topAnchor.constraint(equalTo: usernameField.bottomAnchor, constant: 50),
            passwordField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 70),
            passwordField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -70),
        ])
    }
    
    private func setupSignupButton() {
        addSubview(signUpButton)
        signUpButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            signUpButton.topAnchor.constraint(equalTo: passwordField.bottomAnchor, constant: 30),
            signUpButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            signUpButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30)
        ])
    }
    
    private func setupLoginButton() {
        addSubview(loginButton)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            loginButton.topAnchor.constraint(equalTo: signUpButton.bottomAnchor, constant: 60),
            loginButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 80),
            loginButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -80)
        ])
    }
}
