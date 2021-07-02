//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Cheslau Gerasimovitch
//  Task 2_3
//

import UIKit

class ProfileViewController: UIViewController {
    let tableView = UITableView()
    let cellReuseIdentifier = "cell"

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.register(PostTableViewCell.self, forCellReuseIdentifier: PostTableViewCell.cellId)
        tableView.register(ProfileHeaderView.self, forHeaderFooterViewReuseIdentifier: ProfileHeaderView().profileHeaderId)
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
        let array = FeedArray()
        let numberOfRows = array.feedArray.count
        return numberOfRows
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let feed = FeedArray()
        let cell = tableView.dequeueReusableCell(withIdentifier: PostTableViewCell.cellId, for: indexPath) as! PostTableViewCell
        cell.authorLabel.text = feed.feedArray[indexPath.row].author
        cell.imageView?.image = UIImage(named: feed.feedArray[indexPath.row].image)
        cell.descriptionLabel.text = feed.feedArray[indexPath.row].description
        cell.likesLabel.text = "Likes: \(feed.feedArray[indexPath.row].likes)"
        cell.viewsLabel.text = "Views: \(feed.feedArray[indexPath.row].views) "
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: ProfileHeaderView().profileHeaderId) as! ProfileHeaderView
        return headerView
    }
    
}

