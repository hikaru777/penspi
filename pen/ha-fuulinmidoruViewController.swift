//
//  ha-fuulinmidoruViewController.swift
//  pen
//
//  Created by Hikaru.Honda on 2020/06/21.
//  Copyright © 2020 Hikaru.Honda. All rights reserved.
//

import UIKit


class hafuulinmidoruViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    @IBOutlet var table4: UITableView!
    
    var technique = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        table4.dataSource = self
        
         table4.delegate = self
        
        technique = ["ハーフウィンドミル","ハーフウィンドミルリバース","インフィニティ","インフィニティリバース",
        "スキップトインフィニティ"]
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return technique.count
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell3")
        
        cell?.textLabel?.text = technique[indexPath.row]
        
        return cell!
       }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath :IndexPath) {
           print("\(technique[indexPath.row])が選ばれました")
       }
}

