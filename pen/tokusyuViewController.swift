//
//  tokusyuViewController.swift
//  pen
//
//  Created by Hikaru.Honda on 2020/07/05.
//  Copyright © 2020 Hikaru.Honda. All rights reserved.
//

import UIKit

class tokusyuViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    @IBOutlet var table: UITableView!
    
    var selectedTechnique: String = ""
    var technique = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        table.dataSource = self
        
         table.delegate = self
        
        technique = ["トライアングルパス","シーザースピン","iteza trick","itezaピボット","iteza式コブラ",
        "クーロンコンボ","ラダー","ノマライザー","コンティニュアスパームスピン"]
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return technique.count
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell4")
        
        cell?.textLabel?.text = technique[indexPath.row]
        
        return cell!
       }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath :IndexPath) {
           tableView.deselectRow(at: indexPath, animated: true)
           print("\(technique[indexPath.row])が選ばれました")
           selectedTechnique = technique[indexPath.row]
           performSegue(withIdentifier: "toResultView6", sender: nil)
       }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           
        if segue.identifier == "toResultView6" {
            let superController = segue.destination as! tokusyu2ViewController
            superController.technique = self.selectedTechnique
}
}
}
