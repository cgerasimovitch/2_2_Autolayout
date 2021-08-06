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
    
    var myImageView = UIImageView()
    var popUpView = UIView()
    let window = UIWindow()
    let closeButton = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        
        profileHeaderView.presenter = self
    }
    
    
    
    func present(image: UIImage){
        print("Present started")
        self.view.addSubview(popUpView)
        popUpView.frame.size = super.view.frame.size
        popUpView.addSubview(myImageView)
        myImageView.frame.size = super.view.frame.size
        myImageView.backgroundColor = .black
        myImageView.contentMode = .scaleAspectFit
        myImageView.image = image
        addCloseButton()
    }
    
    func addCloseButton(){
        
        popUpView.addSubview(closeButton)
        closeButton.frame = CGRect(x: popUpView.frame.maxX - 70, y: 110, width: 50, height: 50)
        closeButton.backgroundColor = .gray
        closeButton.setTitle("X", for: .normal)
        closeButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        closeButton.addTarget(self, action: #selector(removethisBeauty), for: UIControl.Event.touchUpInside)
    }
    
    @objc func removethisBeauty(){
        myImageView.removeFromSuperview()
        closeButton.removeFromSuperview()
        popUpView.removeFromSuperview()
        
    }
}
