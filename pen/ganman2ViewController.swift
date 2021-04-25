//
//  ganman2ViewController.swift
//  pen
//
//  Created by Hikaru.Honda on 2021/03/13.
//  Copyright © 2021 Hikaru.Honda. All rights reserved.
//

import UIKit

class ganman2ViewController: UIViewController {
    
    @IBOutlet var label3: UILabel!
    
    var technique = String()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        if technique == "ガンマン" {
            label3.text = "aaa"
            
        }
        
        if technique == "ガンマンリバース" {
            label3.text = ""
            
        }
        
        if technique == "スキップガンマン" {
            label3.text = ""
            
        }
        
        if technique == "ガトリング" {
            label3.text = ""
            
        }
        
        if technique == "チャージガトリング" {
            label3.text = ""
            
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
