//
//  PhotosTableViewCell.swift
//  Navigation
//
//  Created by Admin on 6/26/21.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class PhotosTableViewCell: UITableViewCell {
    //Сделайте верстку согласно макету. В ячейке должно отображаться первые 4 фото.
    

    let userImageView = UIImageView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
            super.init(style: style, reuseIdentifier: reuseIdentifier)
    
        

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUserImage(image: UIImageView) {
        self.addSubview(image)
        image.translatesAutoresizingMaskIntoConstraints = false
        image.clipsToBounds = true
        image.layer.cornerRadius = 6
        let window = UIWindow()
        let borderOffset:CGFloat = 12
        let inlineOffset:CGFloat = 8
        
        let imageWidth = (window.frame.width - borderOffset*2 - inlineOffset*2)/4
        
        NSLayoutConstraint.activate([
            image.widthAnchor.constraint(equalToConstant: imageWidth),
            image.heightAnchor.constraint(equalTo: image.widthAnchor),
            image.topAnchor.constraint(equalTo: self.topAnchor, constant: 12),
            image.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 12)
        ])
        
    }

}
