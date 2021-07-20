//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Admin on 6/9/21.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController, ImagePresenter {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        

    }
    
    func present(imageView: UIImageView){
        print("Present started")
        imageView.frame = UIScreen.main.bounds
        imageView.backgroundColor = .black
        imageView.contentMode = .scaleAspectFit
    }
    
    override func viewWillLayoutSubviews() {
        
    }

    
}
