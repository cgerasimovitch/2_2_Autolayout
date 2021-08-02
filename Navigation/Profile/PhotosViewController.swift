//
//  PhotosViewController.swift
//  Navigation
//
//  Created by Admin on 8/2/21.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class PhotosViewController: UIViewController {
    var photosCollection = UICollectionView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(photosCollection)
        photosCollection.register(PhotosCollectionViewCell.self, forCellWithReuseIdentifier: PhotosCollectionViewCell.cellId)
        // Do any additional setup after loading the view.
    }
    
    func setupCollection(){
        
    }
    
    func setupCollectionLayout(){
        photosCollection.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            photosCollection.topAnchor.constraint(equalTo: self.view.topAnchor),
            photosCollection.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            photosCollection.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            photosCollection.trailingAnchor.constraint(equalTo: self.view.trailingAnchor)
        ])
    }

    
}

extension PhotosViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        <#code#>
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }
    
    
    
    
}
