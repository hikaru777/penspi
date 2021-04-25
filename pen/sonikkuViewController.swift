//
//  sonikkuViewController.swift
//  pen
//
//  Created by Hikaru.Honda on 2020/06/21.
//  Copyright © 2020 Hikaru.Honda. All rights reserved.
//

import UIKit

class sonikkuViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    @IBOutlet var table2: UITableView!
    
    var selectedTechnique: String = ""
    var technique = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        table2.dataSource = self
        
        table2.delegate = self
        
        technique = ["ソニック","ソニックリバース","フェイクトソニック","フェイクトソニックリバース",
        "ソニックひねり","ソニックひねりリバース","シメトリカルソニック",
        "シメトリカルソニックリバース","スキップソニック","スキップソニックリバース",
        "スリップトソニック","スリップトソニックリバース","フルーエントソニック","フルーエントソニックリバース",
        "フルーエントソニックひねり", "フルーエントソニックひねりリバース","ダブルチャージ","デビルズソニック","デビルズスピン",
        "デビルズシャドウ","イーストソニック","スードウソニック","ムーンウォークソニック",
        "ダブルソニック","シャドウ","フェイクトシャドウ","フェイクトシャドウリバース","シャドウリバース","フラッシュソニック",
        "ソニックバスト"]
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return technique.count
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
        cell?.textLabel?.text = technique[indexPath.row]
        
        return cell!
       }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath :IndexPath) {
           tableView.deselectRow(at: indexPath, animated: true)
           print("\(technique[indexPath.row])が選ばれました")
           selectedTechnique = technique[indexPath.row]
           performSegue(withIdentifier: "toResultView2", sender: nil)
           
       }
       
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           
        if segue.identifier == "toResultView2" {
            let superController = segue.destination as! sonikku2ViewController
            superController.technique = self.selectedTechnique
        }
       
       }

}
