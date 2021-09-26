//
//  PhotosCollectionViewCell.swift
//  Navigation
//
//  Created by Admin on 8/2/21.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class PhotosCollectionViewCell: UICollectionViewCell {
    static let cellId = "collectionCell"
    var photoImageView = UIImageView()
    override init(frame: CGRect){
        super.init(frame: .zero)
        contentView.addSubview(photoImageView)
        photoLayout()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func photoLayout(){
        photoImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            photoImageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            photoImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            photoImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            photoImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
        ])
        
    }
    
    
}
