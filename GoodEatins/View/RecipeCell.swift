//
//  RecipeCell.swift
//  GoodEatins
//
//  Created by 薮本崇仁 on 2019/09/29.
//  Copyright © 2019 薮本崇仁. All rights reserved.
//

import UIKit

class RecipeCell: UICollectionViewCell {
    
    @IBOutlet weak var recipeImg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
//      画像を丸くする
        recipeImg.layer.cornerRadius = 10
        
    }

//  categories配列に入っている名前のついた画像とカテゴリー名を取得
    func configureCell(recipe: Recipe) {
        recipeImg.image = UIImage(named: recipe.imageName)
        
    }
}
