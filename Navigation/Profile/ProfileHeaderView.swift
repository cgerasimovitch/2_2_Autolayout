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
        override init(frame: CGRect) {
            super.init(frame: frame)
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        override func layoutSubviews() {
          setup()
          
        
        }
        func setup(){
                //Add UIImageView
                let imageName = "cat.png"
                let image = UIImage(named: imageName)
                let resultedImageView = UIImageView(image: image)
            resultedImageView.frame = CGRect(x: self.safeAreaInsets.left + 16, y: self.safeAreaInsets.top + 16, width: 100, height: 100)
                resultedImageView.layer.borderColor = UIColor.white.cgColor
                resultedImageView.layer.borderWidth = 3
                resultedImageView.layer.cornerRadius = 50
                addSubview(resultedImageView)
                
                //Add headerUILabel
                let headerUILabel = UILabel()
                headerUILabel.frame = CGRect(x: resultedImageView.frame.maxX + 20, y: self.safeAreaInsets.top + 27, width: 400, height: 30)
                headerUILabel.font = .systemFont(ofSize: 18, weight: .bold)
                headerUILabel.textColor = .black
                headerUILabel.text = "Hipster Megacat"
                addSubview(headerUILabel)
                
                //Add statusUILabel
                statusUILabel.frame = CGRect(x: headerUILabel.frame.origin.x, y: headerUILabel.frame.origin.y + 34, width: headerUILabel.frame.width, height: headerUILabel.frame.height - 2)
                statusUILabel.font = .systemFont(ofSize: 14, weight: .regular)
                statusUILabel.textColor = .gray
                statusUILabel.text = "Waiting for waiting"
                addSubview(statusUILabel)
                
                //Add showStatusButton
                let showStatusButton = UIButton()
                showStatusButton.frame = CGRect(x: 16, y: resultedImageView.frame.maxY + 16, width: window!.frame.width - 32, height: 50)
                showStatusButton.titleLabel?.font = .systemFont(ofSize: statusUILabel.font.pointSize, weight: .regular)
                showStatusButton.setTitle("Show status", for: .normal)
                showStatusButton.titleLabel?.textColor = .white
                showStatusButton.titleLabel?.textAlignment = .center
                showStatusButton.backgroundColor = .blue
                showStatusButton.layer.cornerRadius = 4
                showStatusButton.layer.shadowOffset = CGSize(width: 4, height: 4)
                showStatusButton.layer.shadowRadius = 4
                showStatusButton.layer.shadowColor = UIColor.black.cgColor
                showStatusButton.layer.shadowOpacity = 0.7
                showStatusButton.addTarget(self, action: #selector(buttonPressed), for: UIControl.Event.touchUpInside)
                addSubview(showStatusButton)
            }
        
        @objc func buttonPressed(sender: UIButton!) {
            print("Status is: \(statusUILabel.text)")
            
            
        }

}
