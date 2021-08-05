//
//  PhotosViewController.swift
//  Navigation
//
//  Created by Admin on 8/2/21.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class PhotosViewController: UIViewController {
    var photosCollection:UICollectionView?
    let photosList = PhotosList().listofItems
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigationController?.setNavigationBarHidden(false, animated: true)

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = .white
        
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        let itemOffset: CGFloat = 8
        layout.sectionInset = UIEdgeInsets(top: itemOffset, left: itemOffset, bottom: itemOffset, right: itemOffset)
        let window = UIWindow()
        let squareSize = (window.frame.width - itemOffset*4 - 5)/3
        layout.itemSize = CGSize(width: squareSize, height: squareSize)
        
        photosCollection = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        photosCollection!.register(PhotosCollectionViewCell.self, forCellWithReuseIdentifier: PhotosCollectionViewCell.cellId)
        photosCollection!.backgroundColor = UIColor.white
        
        photosCollection?.dataSource = self
        photosCollection?.delegate = self
 
        self.view.addSubview(photosCollection!)
    }
    
    

    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        navigationController?.setNavigationBarHidden(false, animated: false)
    }
}
extension PhotosViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photosList.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let myCell = collectionView.dequeueReusableCell(withReuseIdentifier: PhotosCollectionViewCell.cellId, for: indexPath) as! PhotosCollectionViewCell
        myCell.backgroundColor = UIColor.gray
        myCell.photoImageView.image = UIImage(named: photosList[indexPath.row])
        myCell.photoImageView.contentMode = .scaleAspectFit
        return myCell
    }
}
extension PhotosViewController: UICollectionViewDelegate {
 
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
       print("User tapped on item \(indexPath.row)")
    }
}
    
    
    
