//
//  pass2ViewController.swift
//  pen
//
//  Created by Hikaru.Honda on 2021/03/13.
//  Copyright © 2021 Hikaru.Honda. All rights reserved.
//

import UIKit

class pass2ViewController: UIViewController {
    
    @IBOutlet var label5: UILabel!
    
    var technique = String()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if technique == "パスリバース" {
            label5.text = "aaa"
        }
        
        if technique == "パス" {
            label5.text = ""
        }
        
        if technique == "シメトリカルパス" {
            label5.text = ""
        }
        
        if technique == "シメトリカルパスリバース" {
            label5.text = ""
        }
        
        if technique == "ドラマー" {
            label5.text = ""
        }
        
        if technique == "フィンガーパス" {
            label5.text = ""
        }
        
        if technique == "フィンガーパスリバース" {
            label5.text = ""
        }
        
        if technique == "パワーパス" {
            label5.text = ""
        }
        
        if technique == "パワーパスリバース" {
            label5.text = ""
        }
        
        if technique == "ミラードパワーパス" {
            label5.text = ""
        }
        
        if technique == "ミラードパワーパスリバース" {
            label5.text = ""
        }
        
        if technique == "" {
            label5.text = ""
        }
        
        
    

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
