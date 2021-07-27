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
    let userPhotosContainerView = UIView()
    let photosHeader = UILabel()
    let navigationImageView = UIImageView()
    let photosStackView = UIStackView()
    
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        self.contentView.backgroundColor = .lightGray
        self.contentView.addSubview(avatarImageView)
        self.contentView.addSubview(fullNameLabel)
        self.contentView.addSubview(statusLabel)
        self.contentView.addSubview(setStatusButton)
        self.contentView.addSubview(newButton)
        self.contentView.addSubview(userPhotosContainerView)
        userPhotosContainerView.addSubview(photosHeader)
        userPhotosContainerView.addSubview(navigationImageView)
        userPhotosContainerView.addSubview(photosStackView)
        
        setupImageView()
        setupImageViewLayout()
        setupFullNameLabel()
        setupFullNameLabelLayout()
        setupStatusLabel()
        setupStatusLabelLayout()
        setupSetStatusButton()
        setupSetStatusButtonLayout()
        setupUserPhotosContainer()
        setupUserPhotosContainerLayout()
        setupUserPhotosHeader()
        setupUserPhotosHeaderLayout()
        setupUserPhotosNavigation()
        setupUserPhotosNavigationLayout()
        setupUserPhotosPreview()
        setupUserPhotosPreviewLayout()
        
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
            setStatusButton.topAnchor.constraint(equalTo: statusLabel.bottomAnchor, constant: 30),
            setStatusButton.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 10),
            setStatusButton.trailingAnchor.constraint(equalTo:  self.contentView.trailingAnchor, constant: -10)
        ])
    }
    
    
    func setupUserPhotosContainer(){
        userPhotosContainerView.backgroundColor = .white
    }
    func setupUserPhotosContainerLayout(){
        userPhotosContainerView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            userPhotosContainerView.topAnchor.constraint(lessThanOrEqualTo: setStatusButton.bottomAnchor, constant: 30),
            userPhotosContainerView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -10),
            userPhotosContainerView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor),
            userPhotosContainerView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor),
            userPhotosContainerView.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
    
    func setupUserPhotosHeader(){
        
        photosHeader.font = .systemFont(ofSize: 24, weight: .bold)
        photosHeader.textColor = .black
        photosHeader.text = "Photos"
    }
    
    func setupUserPhotosHeaderLayout(){

        photosHeader.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            photosHeader.heightAnchor.constraint(equalToConstant: 30),
            photosHeader.widthAnchor.constraint(equalToConstant: 90),
            photosHeader.topAnchor.constraint(equalTo: userPhotosContainerView.topAnchor, constant: 12),
            photosHeader.leadingAnchor.constraint(equalTo: userPhotosContainerView.leadingAnchor, constant: 12)
        ])
    }
    
    func setupUserPhotosNavigation(){
        let imageName = "arrow.png"
        let image = UIImage(named: imageName)
        navigationImageView.image = image
        navigationImageView.contentMode = .scaleAspectFit
    }
    
    func setupUserPhotosNavigationLayout(){
        navigationImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            navigationImageView.heightAnchor.constraint(equalToConstant: 30),
            navigationImageView.widthAnchor.constraint(equalToConstant: 30),
            navigationImageView.centerYAnchor.constraint(equalTo: photosHeader.centerYAnchor),
            navigationImageView.trailingAnchor.constraint(equalTo: userPhotosContainerView.trailingAnchor, constant: -12)
        ])
    }
    
    func setupUserPhotosPreview(){
        
        let photo01 = UIImageView(image: UIImage(named: "01_1890"))
        let photo02 = UIImageView(image: UIImage(named: "02_1844"))
        let photo03 = UIImageView(image: UIImage(named: "03_1876"))
        let photo04 = UIImageView(image: UIImage(named: "05_1870"))
        let photosArray = [photo01, photo02, photo03, photo04]
        let window = UIWindow()
        let spaceCalculations = (window.frame.width - 12 * 2 - 8 * 3)/4
        for photo in photosArray{
            photo.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                photo.heightAnchor.constraint(equalToConstant: spaceCalculations),
                photo.widthAnchor.constraint(equalToConstant: spaceCalculations)
            ])
            photo.layer.cornerRadius = 6
            photo.clipsToBounds = true
            photosStackView.addArrangedSubview(photo)
            print("Image Added")
            print("Width is: \(spaceCalculations)")
            
        }
        
    }
    
    func setupUserPhotosPreviewLayout(){
        photosStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            photosStackView.heightAnchor.constraint(equalToConstant: 100),
            photosStackView.topAnchor.constraint(equalTo: photosHeader.bottomAnchor, constant: 12),
            photosStackView.leadingAnchor.constraint(equalTo:userPhotosContainerView.leadingAnchor, constant: 12),
            photosStackView.trailingAnchor.constraint(equalTo:userPhotosContainerView.trailingAnchor, constant: -12)
            ])
        photosStackView.axis = NSLayoutConstraint.Axis.horizontal
        photosStackView.distribution = .fillEqually
        photosStackView.alignment = .center
        photosStackView.spacing = 8.0
    }
        
       
}
