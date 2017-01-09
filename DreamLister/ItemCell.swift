//
//  ItemCell.swift
//  DreamLister
//
//  Created by Sandra Rezk on 1/3/17.
//  Copyright © 2017 Sandra Rezk. All rights reserved.
//

import UIKit

class ItemCell: UITableViewCell {

    @IBOutlet weak var thumb: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var details: UILabel!
    
    func configureCell(item: Item) {
        title.text = item.title
        price.text = "$\(item.price)"
        details.text = item.details
        
    }
}
