//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Admin on 6/9/21.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        setupNewButton()

    }
    override func viewWillLayoutSubviews() {
        
    }
    
    
    func setupNewButton(){
        let newButton = UIButton()
        view.addSubview(newButton)
        newButton.translatesAutoresizingMaskIntoConstraints = false
        newButton.contentMode = .center
        newButton.setTitle("New button title", for: .normal)
        newButton.setTitleColor(.black, for: .normal)
        newButton.backgroundColor = .yellow
        newButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
        newButton.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        newButton.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        newButton.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        
    }

}
