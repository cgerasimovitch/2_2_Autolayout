//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Admin on 6/9/21.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class ProfileHeaderView: UIView {

    let statusUILabel = UILabel()
    @IBOutlet weak var avatarImageView: UIImageView!{
        didSet{setupImageView(imageView: avatarImageView)}
    }
    
    @IBOutlet weak var fullNameLabel: UILabel!{
        didSet{ setupFullNameLabel()}
    }
    
    @IBOutlet weak var statusLabel: UILabel!{
        didSet{setupStatusLabel()}
    }
    
    @IBOutlet weak var setStatusButton: UIButton!{
        didSet{setupSetStatusButton()}
    }
    
    @IBOutlet weak var statusTextField: UITextField!{
        didSet{setupStatusTextField()}
    }
    
    
        override init(frame: CGRect) {super.init(frame: frame)}
        
        required init?(coder: NSCoder) {
            super.init(coder: coder)
            setupNewButton()
        }
        
    func setupImageView(imageView: UIImageView){
        let imageName = "cat.png"
        let image = UIImage(named: imageName)
        addSubview(imageView)
        imageView.image = image
        imageView.layer.borderColor = UIColor.white.cgColor
        imageView.layer.borderWidth = 3
        imageView.layer.cornerRadius = 50
       
    }
    
    func setupFullNameLabel(){
        addSubview(fullNameLabel)
        fullNameLabel.font = .systemFont(ofSize: 18, weight: .bold)
        fullNameLabel.textColor = .black
        fullNameLabel.text = "Hipster Megacat"
        
    }
    
    func setupStatusLabel(){
        addSubview(statusLabel)
        statusLabel.frame = CGRect(x: safeAreaInsets.left + 16, y: safeAreaInsets.top + 34, width: 200, height: 100)
        statusLabel.font = .systemFont(ofSize: 14, weight: .regular)
        statusLabel.textColor = .gray
        statusLabel.text = "Waiting for waiting"
    }
    
    func setupSetStatusButton(){
        addSubview(setStatusButton)
        setStatusButton.frame = CGRect(x: 16, y: 100, width: 400 - 32, height: 50)
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
        setStatusButton.addTarget(self, action: #selector(buttonPressed), for: UIControl.Event.touchUpInside)
        
    }
    
    func setupStatusTextField(){
        statusTextField.backgroundColor = .white
        statusTextField.layer.cornerRadius = 12
        statusTextField.layer.borderWidth = 1
        statusTextField.layer.borderColor = UIColor.black.cgColor
        statusTextField.font = .systemFont(ofSize: 15, weight: .regular)
        statusTextField.textColor = .black
    }
    
    func setupNewButton(){
        let newButton = UIButton()
        addSubview(newButton)
        newButton.translatesAutoresizingMaskIntoConstraints = false
        newButton.contentMode = .center
        newButton.setTitle("New button title", for: .normal)
        newButton.setTitleColor(.black, for: .normal)
        newButton.backgroundColor = .yellow
        newButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
        newButton.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        newButton.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        newButton.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        
    }
        
        @objc func buttonPressed(sender: UIButton!) {
            print("Status is: \(self.statusLabel.text)")
        }

}
