//
//  passViewController.swift
//  pen
//
//  Created by Hikaru.Honda on 2020/07/05.
//  Copyright © 2020 Hikaru.Honda. All rights reserved.
//

import UIKit

class passViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

 @IBOutlet var table5: UITableView!
    
    var selectedTechnique: String = ""
    var technique = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        table5.dataSource = self
        
         table5.delegate = self
        
        technique = ["パスリバース","パス","シメトリカルパス","シメトリカルパスリバース","ドラマー",
        "フィンガーパス","フィンガーパスリバース","パワーパス","パワーパスリバース",
        "ミラードパワーパス","ミラードパワーパスリバース"]
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
           tableView.deselectRow(at: indexPath, animated: true)
           print("\(technique[indexPath.row])が選ばれました")
           selectedTechnique = technique[indexPath.row]
           performSegue(withIdentifier: "toResultView5", sender: nil)
       }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           
        if segue.identifier == "toResultView5" {
            let superController = segue.destination as! pass2ViewController
            superController.technique = self.selectedTechnique
}
}
}
