//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Admin on 6/9/21.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class ProfileHeaderView: UITableViewHeaderFooterView {

    let profileHeaderId = "ProfileHeaderView"
    let statusUILabel = UILabel()
    let avatarImageView = UIImageView()
    let fullNameLabel = UILabel()
    let statusLabel = UILabel()
    let setStatusButton = UIButton()
    let newButton = UIButton()
    let textField = UITextField()
    
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        self.contentView.backgroundColor = .lightGray
        self.contentView.addSubview(avatarImageView)
        self.contentView.addSubview(fullNameLabel)
        self.contentView.addSubview(statusLabel)
        self.contentView.addSubview(setStatusButton)
        self.contentView.addSubview(textField)
       
        
        setupImageView()
        setupImageViewLayout()
        setupFullNameLabel()
        setupFullNameLabelLayout()
        setupStatusLabel()
        setupStatusLabelLayout()
        setupSetStatusButton()
        setupSetStatusButtonLayout()
        setupTextField(field: textField)
        setupTextFieldLayout(field: textField)
        
    }
        required init?(coder: NSCoder) {
            super.init(coder: coder)
            
        }
    
        
    func setupImageView(){
        let imageName = "cat.png"
        let image = UIImage(named: imageName)
        avatarImageView.image = image
        avatarImageView.layer.borderColor = UIColor.white.cgColor
        avatarImageView.layer.borderWidth = 3
        avatarImageView.layer.cornerRadius = 50
    }
    func setupImageViewLayout(){
        avatarImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            
            avatarImageView.widthAnchor.constraint(equalToConstant: 100),
            avatarImageView.heightAnchor.constraint(equalToConstant: 100),
            avatarImageView.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 16),
            avatarImageView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 16)
        ])}
    
    func setupFullNameLabel(){
        
        fullNameLabel.font = .systemFont(ofSize: 18, weight: .bold)
        fullNameLabel.textColor = .black
        fullNameLabel.text = "Hipster Megacat"
    }
    
    func setupFullNameLabelLayout(){
        fullNameLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            fullNameLabel.heightAnchor.constraint(equalToConstant: 21),
            fullNameLabel.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 27),
            fullNameLabel.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 27),
            fullNameLabel.trailingAnchor.constraint(equalTo:  self.contentView.trailingAnchor, constant: 10)
        ])
    }
    func setupStatusLabel(){
        statusLabel.font = .systemFont(ofSize: 14, weight: .regular)
        statusLabel.textColor = .gray
        statusLabel.text = "Waiting for waiting"
    }
    
    func setupStatusLabelLayout(){
        statusLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            statusLabel.heightAnchor.constraint(equalToConstant: 21),
            statusLabel.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: -30),
            statusLabel.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 27),
            statusLabel.trailingAnchor.constraint(equalTo:  self.contentView.trailingAnchor, constant: 10)
        ])
    }
    
    
    func setupTextField(field: UITextField){
            field.backgroundColor = .white
            field.layer.cornerRadius = 12
            field.layer.borderWidth = 1
            field.layer.borderColor = UIColor.black.cgColor
            field.font = .systemFont(ofSize: 15, weight: .regular)
            field.textColor = .black
    }
    func setupTextFieldLayout(field: UITextField){
        field.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            field.heightAnchor.constraint(equalToConstant: 40),
            field.topAnchor.constraint(equalTo: statusLabel.bottomAnchor, constant: 17),
            field.leadingAnchor.constraint(equalTo: statusLabel.leadingAnchor),
            field.trailingAnchor.constraint(equalTo:  self.contentView.trailingAnchor, constant: -10)
            
        ])
    }
    
    func setupSetStatusButton(){
        setStatusButton.titleLabel?.font = .systemFont(ofSize: statusUILabel.font.pointSize, weight: .regular)
        setStatusButton.setTitle("Show status", for: .normal)
        setStatusButton.setTitleColor(.white, for: .normal)
        setStatusButton.titleLabel?.textAlignment = .center
        setStatusButton.backgroundColor = .link
        setStatusButton.layer.cornerRadius = 4
        setStatusButton.layer.shadowOffset = CGSize(width: 4, height: 4)
        setStatusButton.layer.shadowRadius = 4
        setStatusButton.layer.shadowColor = UIColor.black.cgColor
        setStatusButton.layer.shadowOpacity = 0.7
        setStatusButton.addTarget(self, action: #selector(setStatusButtonPressed), for: UIControl.Event.touchUpInside)
        
    }
    
    @objc func setStatusButtonPressed(sender: UIButton!) {
        print("Status is: \(self.statusLabel.text)")
        
    }
    
    func setupSetStatusButtonLayout(){
        
        setStatusButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            setStatusButton.heightAnchor.constraint(equalToConstant: 50),
            setStatusButton.topAnchor.constraint(equalTo: textField.bottomAnchor, constant: 10),
            setStatusButton.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 10),
            setStatusButton.trailingAnchor.constraint(equalTo:  self.contentView.trailingAnchor, constant: -10)
        ])
    }
    
    
    
   
    
   
        
       
}
