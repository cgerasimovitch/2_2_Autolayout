//
//  PreviewPhotosHeader.swift
//  Navigation
//
//  Created by Admin on 7/30/21.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class PreviewPhotosHeader: UITableViewHeaderFooterView {

    let previewHeaderId = "PreviewHeaderView"
    let userPhotosContainerView = UIView()
    let photosHeader = UILabel()
    let navigationImageView = UIImageView()
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        self.contentView.addSubview(userPhotosContainerView)
        self.contentView.backgroundColor = .white
        userPhotosContainerView.addSubview(photosHeader)
        userPhotosContainerView.addSubview(navigationImageView)
        setupUserPhotosContainerLayout()
        setupUserPhotosHeader()
        setupUserPhotosHeaderLayout()
        setupUserPhotosNavigation()
        setupUserPhotosNavigationLayout()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
    }
    
    func setupUserPhotosContainerLayout(){
        userPhotosContainerView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            userPhotosContainerView.topAnchor.constraint(equalTo: self.contentView.topAnchor),
            userPhotosContainerView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor),
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

}
