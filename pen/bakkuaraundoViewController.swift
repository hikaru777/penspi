//
//  bakkuaraundoViewController.swift
//  pen
//
//  Created by Hikaru.Honda on 2020/07/05.
//  Copyright © 2020 Hikaru.Honda. All rights reserved.
//

import UIKit

class bakkuaraundoViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    @IBOutlet var table: UITableView!
    
    var technique = [String]()
    var selectedTechnique: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        table.dataSource = self
        
         table.delegate = self
        
        technique = ["バックアラウンド","シングルアクセルバックアラウンド","バックアラウンドリバース",
        "ネオバックアラウンド","リシャーボ","シャフィーボ","シャフィーボリバース","ネオサ233",
        "zcc","ボフィーボ"]
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return technique.count
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell5")
        
        cell?.textLabel?.text = technique[indexPath.row]
        
        return cell!
       }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath :IndexPath) {
           tableView.deselectRow(at: indexPath, animated: true)
           print("\(technique[indexPath.row])が選ばれました")
           selectedTechnique = technique[indexPath.row]
           performSegue(withIdentifier: "toResultView7", sender: nil)
       }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           
        if segue.identifier == "toResultView7" {
            let superController = segue.destination as! bakkuaraundo2ViewController
            superController.technique = self.selectedTechnique
}
}
}
