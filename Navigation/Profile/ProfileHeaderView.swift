//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Admin on 6/9/21.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit
import SnapKit

class ProfileHeaderView: UITableViewHeaderFooterView {

    let profileHeaderId = "ProfileHeaderView"
    let statusUILabel = UILabel()
    let avatarImageView = UIImageView()
    let fullNameLabel = UILabel()
    let statusLabel = UILabel()
    let setStatusButton = UIButton()
    let newButton = UIButton()
    let profileTextField = UITextField()
    public var presenter: ImagePresenter?
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        self.contentView.backgroundColor = .lightGray
        self.contentView.addSubview(avatarImageView)
        self.contentView.addSubview(fullNameLabel)
        self.contentView.addSubview(statusLabel)
        self.contentView.addSubview(profileTextField)
        self.contentView.addSubview(setStatusButton)
        
       
        
        setupImageView()
        setupImageViewLayout()
        setupFullNameLabel(labelHere: fullNameLabel)
        setupFullNameLabelLayout(labelHere: fullNameLabel)
        setupStatusLabel(labelHere: statusLabel)
        setupStatusLabelLayout(labelHere: statusLabel)
        setupSetStatusButton(buttonHere: setStatusButton)
        setupSetStatusButtonLayout(buttonHere: setStatusButton)
        setupTextField(textFieldHere: profileTextField)
        setupTextFieldLayout(textFieldHere: profileTextField)
    }
        required init?(coder: NSCoder) {
            super.init(coder: coder)
            setupNewButton()
            presenter = ProfileViewController().self
        }
    
        
    func setupImageView(){
        addSubview(avatarImageView)
        let imageName = "cat.png"
        let image = UIImage(named: imageName)
        avatarImageView.image = image
        avatarImageView.layer.borderColor = UIColor.white.cgColor
        avatarImageView.layer.borderWidth = 3
        avatarImageView.layer.cornerRadius = 50
        avatarImageView.isUserInteractionEnabled = true
        let tapRecognizer = UITapGestureRecognizer(target: self, action: #selector(tapAction))
        avatarImageView.addGestureRecognizer(tapRecognizer)
    }
    func setupImageViewLayout(){
        avatarImageView.snp.makeConstraints { (make) -> Void in
            make.width.equalTo(100)
            make.height.equalTo(100)
            make.top.equalTo(self.contentView.snp.top).offset(16)
            make.leading.equalTo(self.contentView.snp.leading).offset(16)
        }
        
    }
    

    
    func setupFullNameLabel(labelHere: UILabel){
        
        labelHere.font = .systemFont(ofSize: 18, weight: .bold)
        labelHere.textColor = .black
        labelHere.text = "Hipster Megacat"
    }
    
    func setupFullNameLabelLayout(labelHere: UILabel){
        
        labelHere.snp.makeConstraints { (make) -> Void in
            make.height.equalTo(21)
            make.top.equalTo(self.contentView.snp.top).offset(27)
            make.leading.equalTo(avatarImageView.snp.trailing).offset(27)
            make.trailing.equalTo(self.contentView.snp.trailing).offset(10)
        }
        
    }
    func setupStatusLabel(labelHere: UILabel){
        statusLabel.font = .systemFont(ofSize: 14, weight: .regular)
        statusLabel.textColor = .gray
        statusLabel.text = "Waiting for waiting"
    }
    
    func setupStatusLabelLayout(labelHere: UILabel){
        
        labelHere.snp.makeConstraints { (make) -> Void in
            make.height.equalTo(21)
            make.top.equalTo(avatarImageView.snp.bottom).offset(-30)
            make.leading.equalTo(avatarImageView.snp.trailing).offset(27)
            make.trailing.equalTo(self.contentView.snp.trailing).offset(10)
        }
    }
    
    
    func setupTextField(textFieldHere: UITextField){
        textFieldHere.backgroundColor = .white
        textFieldHere.layer.cornerRadius = 12
        textFieldHere.layer.borderWidth = 1
        textFieldHere.layer.borderColor = UIColor.black.cgColor
        textFieldHere.font = .systemFont(ofSize: 15, weight: .regular)
        textFieldHere.textColor = .black
    }
    func setupTextFieldLayout(textFieldHere: UITextField){
        textFieldHere.snp.makeConstraints { (make) -> Void in
            make.height.equalTo(40)
            make.top.equalTo(statusLabel.snp.bottom).offset(17)
            make.leading.equalTo(statusLabel.snp.leading)
            make.trailing.equalTo(self.contentView.snp.trailing).offset(-10)
        }
        
    }
    
    func setupSetStatusButton(buttonHere: UIButton){
        buttonHere.titleLabel?.font = .systemFont(ofSize: statusUILabel.font.pointSize, weight: .regular)
        buttonHere.setTitle("Show status", for: .normal)
        buttonHere.setTitleColor(.white, for: .normal)
        buttonHere.titleLabel?.textAlignment = .center
        buttonHere.backgroundColor = .link
        buttonHere.layer.cornerRadius = 4
        buttonHere.layer.shadowOffset = CGSize(width: 4, height: 4)
        buttonHere.layer.shadowRadius = 4
        buttonHere.layer.shadowColor = UIColor.black.cgColor
        buttonHere.layer.shadowOpacity = 0.7
        setStatusButton.addTarget(self, action: #selector(setStatusButtonPressed), for: UIControl.Event.touchUpInside)
        
    }
    
    @objc func setStatusButtonPressed(sender: UIButton!) {
        print("Status is: \(statusLabel.text ?? "")")
        
    }
    
    func setupNewButton(){
        
    }
    
    func setupSetStatusButtonLayout(buttonHere: UIButton){
        
        buttonHere.snp.makeConstraints { (make) -> Void in
            make.height.equalTo(50)
            make.top.equalTo(profileTextField.snp.bottom).offset(10)
            make.leading.equalTo(self.contentView.snp.leading).offset(10)
            make.trailing.equalTo(self.contentView.snp.trailing).offset(-10)
        }
    }

    @objc func buttonPressed(sender: UIButton!) {
            print("Status is: \(statusLabel.text ?? "")")
        }
    @objc func tapAction(_ sender: UITapGestureRecognizer){
        guard let imageToPresent = avatarImageView.image else {
                print("theirs some thing wrong, image should exist")
                return
            } 
        self.presenter?.present(image: imageToPresent) ?? print("Can't present")    
    }
}
