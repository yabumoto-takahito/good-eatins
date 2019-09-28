//
//  CategoryCell.swift
//  GoodEatins
//
//  Created by jonnyb on 8/24/18.
//  Copyright © 2018 jonnyb. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var categoryImg: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        categoryImg.layer.cornerRadius = 10
    }

    func configureCell(category: FoodCategory) {
        categoryImg.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }
}
