//
//  ViewController.swift
//  GoodEatins
//
//  Created by 薮本崇仁 on 2019/09/23.
//  Copyright © 2019 薮本崇仁. All rights reserved.
//

import UIKit

//テーブルビューデリゲートとテーブルビューデータソースに関するデータのやりとりもここで扱いますよーという宣言
//デリゲートは他のクラスに処理を委譲したり、通知したりする仕組み
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    let data = DataSet()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//      UITableViewクラスのインスタンスであるtableViewのdelegateプロパティに
//      ViewControllerのインスタンスを代入
        tableView.delegate = self
        tableView.dataSource = self
    }
//  セルの個数を指定するデリゲートメソッド（必須）
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.categories.count
    }
//  セルに値を設定するデータソースメソッド（必須）
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
//      Fetch a cell of the appropriate type.
//      適切なタイプのセルを取得。
        if let cell = tableView.dequeueReusableCell(withIdentifier: "categoryCell", for: indexPath) as? CategoryCell {
//          メソッドの引数 indexPath の変数 row には、セルのインデックス番号が設定されている。
            cell.configureCell(category: data.categories[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
//  各indexPathのセルの高さを指定。
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
}
