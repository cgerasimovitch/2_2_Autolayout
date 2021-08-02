//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Admin on 6/9/21.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController, ImagePresenter {
    @IBOutlet weak var profileHeaderView: ProfileHeaderView!
    
    @IBOutlet weak var myImageView: UIImageView!
    let window = UIWindow()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        profileHeaderView.presenter = self
    }
    
    func present(image: UIImage){
        print("Present started")
        
        myImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
        myImageView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
        myImageView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor),
        myImageView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
        myImageView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor)
        ])
        myImageView.backgroundColor = .black
        myImageView.contentMode = .scaleAspectFit
        myImageView.image = image
    }
    
    override func viewWillLayoutSubviews() {
        
    }

    
}
