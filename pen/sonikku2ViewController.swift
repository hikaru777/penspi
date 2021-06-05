//
//  sonikku2ViewController.swift
//  pen
//
//  Created by Hikaru.Honda on 2020/10/04.
//  Copyright © 2020 Hikaru.Honda. All rights reserved.
//

import UIKit

class sonikku2ViewController: UIViewController {
    
    @IBOutlet var textview2: UITextView!
    
    var so = Ex()
    
    
    var technique = String()

    override func viewDidLoad() {
        super.viewDidLoad()
        if technique == "ソニック" {
            textview2.text = "\(so.sonic)"
               }
        if technique == "ソニックリバース" {
            textview2.text = "\(so.soniriba)"
        }
        if technique == "フェイクトソニック" {
            textview2.text = "\(so.feictsoni)"
        }
        if technique == "フェイクトソニックリバース" {
            textview2.text = "\(so.feictsoniri)"
        }
        if technique == "ソニックひねり" {
            textview2.text = "\(so.sonihine)"
        }
        if technique == "ソニックひねりリバース" {
            textview2.text = "\(so.sonihineri)"
        }
        if technique == "シメトリカルソニック" {
            textview2.text = "\(so.simesoni)"
        }
        if technique == "シメトリカルソニックリバース" {
            textview2.text = "\(so.simesoniri)"
        }
        if technique == "スキップソニック" {
            textview2.text = "\(so.skipsoni)"
        }
        if technique == "スキップソニックリバース" {
            textview2.text = "\(so.skipsoniri)"
               }
        if technique == "シャドウ" {
            textview2.text = "\(so.shado)"
               }
        if technique == "スリップトソニック" {
            textview2.text = "\(so.sriptsoni)"
               }
        if technique == "スリップトソニックリバース" {
            textview2.text = "\(so.sriptsoniri)"
               }
        if technique == "フルーエントソニック" {
            textview2.text = "\(so.flsoni)"
               }
        if technique == "フルーエントソニックリバース" {
            textview2.text = "\(so.flsoniri)"
               }
        if technique == "フルーエントソニックひねり" {
            textview2.text = "\(so.flsonihine)"
               }
        if technique == "フルーエントソニックひねりリバース" {
            textview2.text = "\(so.flsonihiri)"
               }
        if technique == "ダブルチャージ" {
            textview2.text = "\(so.dabcha)"
               }
        if technique == "デビルズソニック" {
            textview2.text = "\(so.debisoni)"
               }
        if technique == "デビルズスピン" {
            textview2.text = "\(so.debispi)"
               }
        if technique == "デビルズシャドウ" {
            textview2.text = "\(so.debilsshad)"
               }
        if technique == "イーストソニック" {
            textview2.text = "\(so.istsoni)"
               }
        if technique == "スードウソニック" {
            textview2.text = "\(so.sdsoni)"
               }
        if technique == "ムーンウォークソニック" {
            textview2.text = "\(so.munwsoni)"
                      }
        if technique == "ダブルソニック" {
            textview2.text = "\(so.dabsoni)"
                      }
        if technique == "フェイクトシャドウ" {
            textview2.text = "\(so.fcshad)"
                      }
        if technique == "フェイクトシャドウリバース" {
            textview2.text = "\(so.fcshadri)"
            }
        if technique == "シャドウリバース" {
            textview2.text = "\(so.shadri)"
        }
        if technique == "ソニックバスト" {
            textview2.text = "\(so.sonibas)"
        }
        if technique == "フラッシュソニック" {
            textview2.text = "\(so.frasoni)"
        }
        if technique == "" {
            textview2.text = ""
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

