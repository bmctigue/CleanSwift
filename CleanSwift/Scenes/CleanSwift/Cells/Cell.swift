//
//  ItemCell.swift
//  CleanSwift
//
//  Created by Bruce McTigue on 7/3/18.
//  Copyright © 2018 tiguer. All rights reserved.
//

import UIKit
import Kingfisher

class ItemCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var itemImageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var item: CleanSwift.FetchItems.ViewModel.DisplayedItem? {
        didSet {
            if let item = item {
                titleLabel.text = item.title
                descriptionLabel.text = item.description
                let url = URL(string: item.imageUrl)
                itemImageView.kf.setImage(with: url, placeholder: nil, completionHandler:nil)
            }
        }
    }
}
