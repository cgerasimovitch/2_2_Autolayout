//
//  LogInViewController.swift
//  Navigation
//
//  Created by Admin on 6/11/21.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {

    let logoImageView = UIImageView()
    let fieldsView = UIView()
    let loginTextField = UITextField()
    let border = UIView()
    let passwordTextField = UITextField()
    let loginButton = UIButton()
    let scrollView = UIScrollView()
    let containerView = UIView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        navigationController?.navigationBar.isHidden = true
        setupScrollandContainer(scroll: scrollView, container: containerView)
        setupImageView(imageView: logoImageView)
        setupFieldsView(uiview: fieldsView)
        setupLoginTextField(field: loginTextField)
        setupInfieldBorder(uiview: border)
        setupPasswordField(field: passwordTextField)
        setupLogInButton(button: loginButton)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    
    
    @objc private func keyboardWillShow(notification: NSNotification){
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue{
            scrollView.contentInset.bottom = keyboardSize.height
            scrollView.verticalScrollIndicatorInsets = UIEdgeInsets(top: 0, left: 0, bottom: keyboardSize.height, right: 0)
        }
    }
    
    @objc private func keyboardWillHide(notification: NSNotification){
        scrollView.contentInset.bottom = .zero
        scrollView.verticalScrollIndicatorInsets = .zero
    }
    
    
    func setupScrollandContainer(scroll: UIScrollView, container: UIView){
        
        self.view.addSubview(scroll)
        
        scroll.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        scroll.translatesAutoresizingMaskIntoConstraints = false
        scroll.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        scroll.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        scroll.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        scroll.addSubview(container)
        container.translatesAutoresizingMaskIntoConstraints = false
        container.topAnchor.constraint(equalTo: scroll.topAnchor).isActive = true
        container.leadingAnchor.constraint(equalTo: scroll.leadingAnchor).isActive = true
        container.trailingAnchor.constraint(equalTo: scroll.trailingAnchor).isActive = true
        container.centerXAnchor.constraint(equalTo: scroll.centerXAnchor).isActive = true
        container.bottomAnchor.constraint(equalTo: scroll.bottomAnchor).isActive = true
        container.backgroundColor = .red
        container.addSubview(logoImageView)
        container.addSubview(fieldsView)
        container.addSubview(loginButton)
        
    }
    
    func setupImageView(imageView: UIImageView){
        imageView.translatesAutoresizingMaskIntoConstraints = false
        let image = UIImage(named: "logo.png")
        imageView.image = image
        imageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        imageView.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        imageView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 120).isActive = true
    }
    
    func setupFieldsView(uiview: UIView){
        uiview.translatesAutoresizingMaskIntoConstraints = false
        uiview.heightAnchor.constraint(equalToConstant: 100).isActive = true
        uiview.leadingAnchor.constraint(equalTo: containerView.safeAreaLayoutGuide.leadingAnchor, constant: 16).isActive = true
        uiview.trailingAnchor.constraint(equalTo: containerView.safeAreaLayoutGuide.trailingAnchor, constant: -16).isActive = true
        uiview.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 120).isActive = true
        uiview.backgroundColor = .systemGray6
        uiview.layer.borderColor = UIColor.lightGray.cgColor
        uiview.layer.borderWidth = 0.5
        uiview.layer.cornerRadius = 10
        uiview.clipsToBounds = true
    }
    
    func setupLoginTextField(field: UITextField){
        field.translatesAutoresizingMaskIntoConstraints = false
        fieldsView.addSubview(field)
        field.heightAnchor.constraint(equalToConstant: 50).isActive = true
        field.leadingAnchor.constraint(equalTo: fieldsView.safeAreaLayoutGuide.leadingAnchor, constant: 5).isActive = true
        field.trailingAnchor.constraint(equalTo: fieldsView.safeAreaLayoutGuide.trailingAnchor).isActive = true
        field.topAnchor.constraint(equalTo: fieldsView.topAnchor).isActive = true
        field.placeholder = "Email or phone"
        field.textColor = .black
        field.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        field.autocapitalizationType = .none
    }
    
    func setupInfieldBorder(uiview: UIView){
        fieldsView.addSubview(border)
        border.backgroundColor = UIColor.lightGray
        border.translatesAutoresizingMaskIntoConstraints = false
        border.heightAnchor.constraint(equalToConstant: 1).isActive = true
        border.leadingAnchor.constraint(equalTo: fieldsView.safeAreaLayoutGuide.leadingAnchor).isActive = true
        border.centerYAnchor.constraint(equalTo: fieldsView.centerYAnchor).isActive = true
        border.trailingAnchor.constraint(equalTo: fieldsView.safeAreaLayoutGuide.trailingAnchor).isActive = true
    }
    
    func setupPasswordField(field: UITextField){
        field.translatesAutoresizingMaskIntoConstraints = false
        fieldsView.addSubview(field)
        field.heightAnchor.constraint(equalToConstant: 50).isActive = true
        field.leadingAnchor.constraint(equalTo: fieldsView.safeAreaLayoutGuide.leadingAnchor, constant: 5).isActive = true
        field.trailingAnchor.constraint(equalTo: fieldsView.safeAreaLayoutGuide.trailingAnchor).isActive = true
        field.bottomAnchor.constraint(equalTo: fieldsView.bottomAnchor).isActive = true
        field.placeholder = "Password"
        field.isSecureTextEntry = true
        field.textColor = .black
        field.font = UIFont.systemFont(ofSize: 16, weight: .medium)
    }
    
    func setupLogInButton(button: UIButton){
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        let pixelImage = UIImage(named: "blue_pixel.png")
        loginButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        loginButton.leadingAnchor.constraint(equalTo: fieldsView.leadingAnchor).isActive = true
        loginButton.trailingAnchor.constraint(equalTo: fieldsView.trailingAnchor).isActive = true
        loginButton.topAnchor.constraint(equalTo: fieldsView.bottomAnchor, constant: 16).isActive = true
        loginButton.clipsToBounds = true
        loginButton.layer.cornerRadius = 10
        loginButton.setTitle("Log In", for: .normal)
        loginButton.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        loginButton.titleLabel?.textColor = .white
        loginButton.setBackgroundImage(pixelImage, for: .normal)
        switch loginButton.state {
        case .normal:
            loginButton.alpha = 1
        default:
            loginButton.alpha = 0.8
        }
        loginButton.addTarget(self, action: #selector(buttonPressed), for: UIControl.Event.touchUpInside)
        
    }

    @objc func buttonPressed(sender: UIButton!) {
        
        self.present(ProfileViewController(), animated: false, completion: nil)
    }
    
   
}
