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
        didSet{
            setupImageView()
        }
    }
    

    
    @IBOutlet weak var fullNameLabel: UILabel!{
        didSet{
            setupFullNameLabel()
        }
    }
    
    @IBOutlet weak var statusLabel: UILabel!{
        didSet{
            setupStatusLabel()
        }
    }
    
    @IBOutlet weak var setStatusButton: UIButton!{
        didSet{
            setupSetStatusButton()
        }
    }
    
    
        override init(frame: CGRect) {
            super.init(frame: frame)
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
        addSubview(avatarImageView)
    }
    
    func setupFullNameLabel(){
        //Add headerUILabel
        
        fullNameLabel.font = .systemFont(ofSize: 18, weight: .bold)
        fullNameLabel.textColor = .black
        fullNameLabel.text = "Hipster Megacat"
        addSubview(fullNameLabel)
    }
    
    func setupStatusLabel(){
        statusLabel.frame = CGRect(x: safeAreaInsets.left + 16, y: safeAreaInsets.top + 34, width: 200, height: 100)
        statusLabel.font = .systemFont(ofSize: 14, weight: .regular)
        statusLabel.textColor = .gray
        statusLabel.text = "Waiting for waiting"
        addSubview(statusLabel)
    }
    
    func setupSetStatusButton(){
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
        addSubview(setStatusButton)
    }
    
        
        @objc func buttonPressed(sender: UIButton!) {
            print("Status is: \(statusUILabel.text)")
            
            
        }

}
