//
//  CategoryCell.swift
//  GoodEatins
//
//  Created by 薮本崇仁 on 2019/09/24.
//  Copyright © 2019 薮本崇仁. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var categoryImg: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
//      画像を丸くする
        categoryImg.layer.cornerRadius = 10
    }
//  categories配列に入っている名前のついた画像とカテゴリー名を取得
    func configureCell(category: FoodCategory) {
        categoryImg.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
        
    }

}
