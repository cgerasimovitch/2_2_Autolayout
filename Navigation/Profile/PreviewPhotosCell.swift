//
//  PreviewPhotosCell.swift
//  Navigation
//
//  Created by Admin on 7/29/21.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class PreviewPhotosCell: UITableViewCell {
    static let cellId = "previewCellId"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
            super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
