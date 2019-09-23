//
//  ViewController.swift
//  GoodEatins
//
//  Created by 薮本崇仁 on 2019/09/23.
//  Copyright © 2019 薮本崇仁. All rights reserved.
//

import UIKit

//テーブルビューデリゲートとテーブルビューデータソースに関するデータのやりとりもここで扱いますよーという宣言
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
//  セルの個数を指定するデリゲートメソッド（必須）
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
//  セルに値を設定するデータソースメソッド（必須）
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }


}

