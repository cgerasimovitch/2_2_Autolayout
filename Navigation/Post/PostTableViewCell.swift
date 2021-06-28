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
        setupPostImageView(imageView: postImageView)
        setupDescriptionLabel(label: descriptionLabel)
        setuplikesLabel(label: likesLabel)
        setupViewsLabel(label: viewsLabel)
    }
    
    func setupAuthorLabel(label: UILabel) {
        self.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            label.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            label.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 16),
            label.heightAnchor.constraint(equalToConstant: 16)
        ])
        label.font = .systemFont(ofSize: 20, weight: .bold)
        label.textColor = .black
        label.numberOfLines = 2
    }
    
    func setupPostImageView(imageView: UIImageView) {
        self.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.backgroundColor = .black
        NSLayoutConstraint.activate([
            
            imageView.topAnchor.constraint(equalTo: authorLabel.bottomAnchor, constant: 12),
            imageView.heightAnchor.constraint(equalToConstant: window!.frame.width),
            imageView.widthAnchor.constraint(equalToConstant: window!.frame.width)
        ])
        
    }
    
    func setupDescriptionLabel(label: UILabel){
        self.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            label.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            label.topAnchor.constraint(equalTo: postImageView.bottomAnchor, constant: 16),
        ])
        label.font = .systemFont(ofSize: 14, weight: .medium)
        label.textColor = .systemGray
        label.numberOfLines = 0
        
    }
    
    func setuplikesLabel(label: UILabel){
        self.addSubview(likesLabel)
        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            label.widthAnchor.constraint(equalToConstant: 150),
            label.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 16),
            label.bottomAnchor.constraint(lessThanOrEqualTo: self.safeAreaLayoutGuide.bottomAnchor, constant: 16)
            
        ])
        
        label.font = .systemFont(ofSize: 16, weight: .medium)
        label.textColor = .black
        label.numberOfLines = 0
        
    }
    
    func setupViewsLabel(label: UILabel){
        self.addSubview(viewsLabel)
        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            label.widthAnchor.constraint(equalToConstant: 150),
            label.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 16),
            label.bottomAnchor.constraint(lessThanOrEqualTo: self.safeAreaLayoutGuide.bottomAnchor, constant: 16)
        ])
        
        label.font = .systemFont(ofSize: 16, weight: .medium)
        label.textColor = .black
        label.numberOfLines = 0
    }
    
}
