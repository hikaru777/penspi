//
//  ViewController.swift
//  pen
//
//  Created by Hikaru.Honda on 2020/06/21.
//  Copyright © 2020 Hikaru.Honda. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet var table: UITableView!
    
    var selectedTechnique: String = ""
    var technique = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        table.dataSource = self
        
        table.delegate = self
        
        technique = ["ノーマル","ダブル","リバース","シングルアクセル","ハーモニック","セミリバース","カウンター","パームスピン","カージオイド","シングルアクセルリバース","フィンガーレスノーマル","フィンガーレスリバース","ハーフフェイクトリバース","ハーフフェイクトノーマル","コンティニュアスシングルアクセルカージオイド"]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return technique.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        
        cell?.textLabel?.text = technique[indexPath.row]
        
        return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath :IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        print("\(technique[indexPath.row])が選ばれました")
        selectedTechnique = technique[indexPath.row]
        performSegue(withIdentifier: "toResultView", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           
        if segue.identifier == "toResultView" {
            let superController = segue.destination as! Nomal2ViewController
            superController.technique = self.selectedTechnique
        }
           
    
    }
    
    
    
}

