//
//  PostTableViewCell.swift
//  Navigation
//
//  Created by Admin on 6/26/21.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class PostTableViewCell: UITableViewCell {

    let authorLabel = UILabel()
    let postImageView = UIImageView()
    let descriptionLabel = UILabel()
    let likesLabel = UILabel()
    let viewsLabel = UILabel()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupAuthorLabel(label: authorLabel)

    }
    
    func setupAuthorLabel(label: UILabel) {
        self.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            label.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor),
            label.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 16),
            label.heightAnchor.constraint(equalToConstant: 16)
        ])
        
    }
    
    func setupPostImageView(imageView: UILabel) {
        
    }
    
    func setupDescriptionLabel(label: UILabel){
        
    }
}
