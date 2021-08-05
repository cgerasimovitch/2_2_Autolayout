//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Cheslau Gerasimovitch
//  Task 2_3
//

import UIKit

class ProfileViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    let cellReuseIdentifier = "cell"

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(PostTableViewCell.self, forCellReuseIdentifier: PostTableViewCell.cellId)
        tableView.register(PreviewPhotosCell.self, forCellReuseIdentifier: PreviewPhotosCell.cellId)
        tableView.register(ProfileHeaderView.self, forHeaderFooterViewReuseIdentifier: ProfileHeaderView().profileHeaderId)
        tableView.register(PreviewPhotosHeader.self, forHeaderFooterViewReuseIdentifier: PreviewPhotosHeader().previewHeaderId)
        setupTableView(table: tableView)
        
    }
    override func viewWillLayoutSubviews() {
        
    }

    func setupTableView(table: UITableView){
        self.view.addSubview(table)
        table.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            table.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
            table.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor),
            table.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            table.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor)
        ])
                                        
    }
    
}



extension ProfileViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 1:
            return 1
        case 2:
            let array = FeedArray()
            let numberOfRows = array.feedArray.count
            return numberOfRows
        default:
            return 0
        }
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: PreviewPhotosCell.cellId, for: indexPath) as! PreviewPhotosCell
            return cell
        case 2:
            let feed = FeedArray()
            let cell = tableView.dequeueReusableCell(withIdentifier: PostTableViewCell.cellId, for: indexPath) as! PostTableViewCell
            cell.authorLabel.text = feed.feedArray[indexPath.row].author
            cell.postImageView.image = UIImage(named: feed.feedArray[indexPath.row].image)
            cell.descriptionLabel.text = feed.feedArray[indexPath.row].description
            cell.likesLabel.text = "Likes: \(feed.feedArray[indexPath.row].likes)"
            cell.viewsLabel.text = "Views: \(feed.feedArray[indexPath.row].views) "
                return cell
        default:
            return UITableViewCell()
        }
            
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        switch section {
        case 0:
            let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: ProfileHeaderView().profileHeaderId) as! ProfileHeaderView
            return headerView
        case 1:
            let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: PreviewPhotosHeader().previewHeaderId) as! PreviewPhotosHeader
            return headerView
        default:
            return UIView()
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        switch section {
        case 0:
            return 240
        case 1:
            return 25
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.section{
        case 0:
            return
        case 1:
            let storyBoard = UIStoryboard(name: "Main", bundle: nil)
            let photosViewController = storyBoard.instantiateViewController(withIdentifier: "PhotosViewController")
            self.navigationController!.pushViewController(photosViewController, animated: true)
        default:
            return
        }
    }
}
