//
//  LogInViewController.swift
//  Navigation
//
//  Created by Admin on 6/11/21.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        navigationController?.navigationBar.isHidden = true
        setupUIImageView()
        // Do any additional setup after loading the view.
    }
    
    
    func setupUIImageView(){
        let logoImageView = UIImageView()
        let image = UIImage(named: "logo.png")
        logoImageView.image = image
        logoImageView.frame.size = CGSize(width: 100, height: 100)
        self.view.addSubview(logoImageView)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
