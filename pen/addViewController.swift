//
//  addViewController.swift
//  pen
//
//  Created by Hikaru.Honda on 2021/06/05.
//  Copyright © 2021 Hikaru.Honda. All rights reserved.
//

import UIKit
import Firebase

class addViewController: UIViewController , UITextFieldDelegate{
    
    
    @IBOutlet weak var text: UITextView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func tuika() {
        
        Firestore.firestore().collection("setumeibun").document("nomal3").setData(
        
            ["bun": text.text!],
            merge: true,
        completion: { Void in
            
        }
        
        )
        
    }
    
    //　タッチでキーボードを閉じる
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        view.endEditing(true)
    }
    
    //リターンキーでキーボードを閉じる
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        
        //キーボードが閉じる
        textField.resignFirstResponder()
        
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
