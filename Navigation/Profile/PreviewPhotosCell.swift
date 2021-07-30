//
//  PreviewPhotosCell.swift
//  Navigation
//
//  Created by Admin on 7/29/21.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class PreviewPhotosCell: UITableViewCell {
    static let cellId = "previewCellId"
    let userPhotosContainerView = UIView()
    
    let photosStackView = UIStackView()
   
        
        override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
            super.init(style: style, reuseIdentifier: reuseIdentifier)
            self.contentView.addSubview(userPhotosContainerView)
            userPhotosContainerView.addSubview(photosStackView)
            setupUserPhotosContainer()
            setupUserPhotosContainerLayout()
            setupUserPhotosPreview()
            setupUserPhotosPreviewLayout()
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    
    func setupUserPhotosContainer(){
        userPhotosContainerView.backgroundColor = .white
    }
    func setupUserPhotosContainerLayout(){
        userPhotosContainerView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            userPhotosContainerView.topAnchor.constraint(equalTo: self.contentView.topAnchor),
            userPhotosContainerView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor),
            userPhotosContainerView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor),
            userPhotosContainerView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor),
            userPhotosContainerView.heightAnchor.constraint(equalToConstant: 120)
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
            photosStackView.topAnchor.constraint(equalTo: userPhotosContainerView.topAnchor, constant: 12),
            photosStackView.leadingAnchor.constraint(equalTo:userPhotosContainerView.leadingAnchor, constant: 12),
            photosStackView.trailingAnchor.constraint(equalTo:userPhotosContainerView.trailingAnchor, constant: -12)
            ])
        photosStackView.axis = NSLayoutConstraint.Axis.horizontal
        photosStackView.distribution = .fillEqually
        photosStackView.alignment = .center
        photosStackView.spacing = 8.0
    }
}
