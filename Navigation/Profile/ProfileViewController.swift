//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Admin on 6/9/21.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    let profileView = ProfileHeaderView()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        view.addSubview(profileView)

    }
    override func viewWillLayoutSubviews() {
        profileView.frame = view.frame
    }

}
