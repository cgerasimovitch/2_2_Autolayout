//
//  LogInViewController.swift
//  Navigation
//
//  Created by Admin on 6/11/21.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        navigationController?.navigationBar.isHidden = true
        setupUIImageView()
        //setupFieldsView()
        // Do any additional setup after loading the view.
    }

    
    func setupUIImageView(){
        
        let logoImageView = UIImageView()
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        let image = UIImage(named: "logo.png")
        logoImageView.image = image
        view.addSubview(logoImageView)
       
        logoImageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        logoImageView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        logoImageView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        logoImageView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 120).isActive = true
       
        
        let fieldsView = UIView()
        fieldsView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(fieldsView)
        
        fieldsView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        fieldsView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 16).isActive = true
        fieldsView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -16).isActive = true
        fieldsView.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 120).isActive = true
        fieldsView.backgroundColor = .systemGray6
        fieldsView.layer.borderColor = UIColor.lightGray.cgColor
        fieldsView.layer.borderWidth = 0.5
        fieldsView.layer.cornerRadius = 10
        fieldsView.clipsToBounds = true
        
        let loginTextField = UITextField()
        loginTextField.translatesAutoresizingMaskIntoConstraints = false
        fieldsView.addSubview(loginTextField)
        loginTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        loginTextField.leadingAnchor.constraint(equalTo: fieldsView.safeAreaLayoutGuide.leadingAnchor, constant: 5).isActive = true
        loginTextField.trailingAnchor.constraint(equalTo: fieldsView.safeAreaLayoutGuide.trailingAnchor).isActive = true
        loginTextField.topAnchor.constraint(equalTo: fieldsView.topAnchor).isActive = true
        loginTextField.placeholder = "Email or phone"
        loginTextField.textColor = .black
        loginTextField.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        loginTextField.autocapitalizationType = .none
        
        let border = UIView()
        fieldsView.addSubview(border)
        border.backgroundColor = UIColor.lightGray
        border.translatesAutoresizingMaskIntoConstraints = false
        border.heightAnchor.constraint(equalToConstant: 1).isActive = true
        border.leadingAnchor.constraint(equalTo: fieldsView.safeAreaLayoutGuide.leadingAnchor).isActive = true
        border.centerYAnchor.constraint(equalTo: fieldsView.centerYAnchor).isActive = true
        border.trailingAnchor.constraint(equalTo: fieldsView.safeAreaLayoutGuide.trailingAnchor).isActive = true
        
        
        
        let passwordTextField = UITextField()
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        fieldsView.addSubview(passwordTextField)
        passwordTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        passwordTextField.leadingAnchor.constraint(equalTo: fieldsView.safeAreaLayoutGuide.leadingAnchor, constant: 5).isActive = true
        passwordTextField.trailingAnchor.constraint(equalTo: fieldsView.safeAreaLayoutGuide.trailingAnchor).isActive = true
        passwordTextField.bottomAnchor.constraint(equalTo: fieldsView.bottomAnchor).isActive = true
        passwordTextField.placeholder = "Password"
        passwordTextField.isSecureTextEntry = true
        passwordTextField.textColor = .black
        
        passwordTextField.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        
       
        let loginButton = UIButton()
        view.addSubview(loginButton)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        let pixelImage = UIImage(named: "blue_pixel.png")
        loginButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        loginButton.leadingAnchor.constraint(equalTo: fieldsView.leadingAnchor).isActive = true
        loginButton.trailingAnchor.constraint(equalTo: fieldsView.trailingAnchor).isActive = true
        loginButton.topAnchor.constraint(equalTo: fieldsView.bottomAnchor, constant: 16).isActive = true
        loginButton.layer.cornerRadius = 10
        loginButton.setTitle("Log In", for: .normal)
        loginButton.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        loginButton.titleLabel?.textColor = .white
        loginButton.setBackgroundImage(pixelImage, for: .normal)
        loginButton.layer.cornerRadius = 10
        switch loginButton.state {
        case .normal:
            loginButton.alpha = 1
        default:
            loginButton.alpha = 0.8
        }
        
    }

}
