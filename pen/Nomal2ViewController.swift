//
//  Nomal2ViewController.swift
//  pen
//
//  Created by Hikaru.Honda on 2020/07/19.
//  Copyright © 2020 Hikaru.Honda. All rights reserved.
//

import UIKit
import AVFoundation

class Nomal2ViewController: UIViewController {
    
    var ex = Ex()
    
    @IBOutlet weak var textview: UITextView!
    @IBOutlet var slider: UISlider!
    
    var path = ""
   
      var technique = String()
    @IBOutlet var movieview: UIView!
    
    var player: AVPlayer?
    
    var number = 0
    
    @objc private func playerItemDidReachEnd(_ notification: Notification) {
        // 動画を最初に巻き戻
        print("test")
//        self.player?.currentItem?.seek(to: CMTime.zero, completionHandler: nil)
        self.player?.currentItem?.seek(to: CMTimeMakeWithSeconds(0, preferredTimescale: (player?.currentTime().timescale)!), completionHandler: nil)
        self.player?.play()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.frame = movieview.bounds
        playerLayer.videoGravity = .resizeAspect
        playerLayer.zPosition = -1
//        playerLayer.frame = movieview.bounds
        movieview.layer.insertSublayer(playerLayer, at: 0)
        
        movieview.backgroundColor = .clear
        
        print(playerLayer.videoRect)
        
        print(movieview.frame.maxX, movieview.frame.minX)
        
        print(movieview.frame, playerLayer.frame)
    }
    
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        player!.pause()
//    }
    
//    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
//    }
//    
//    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
//        player!.play()
//     }
    
    override func viewDidLoad() {
    super.viewDidLoad()
        
        
        
        NotificationCenter.default.addObserver(self, selector: #selector(playerItemDidReachEnd(_:)), name: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: nil)
        
        
        
        
       if technique == "ノーマル"{
        textview.text = "\(ex.nomal)"
           path = Bundle.main.path(forResource: "IMG_0779", ofType: "mov")!
            
        }
        if technique == "ダブル" {
            textview.text = "\(ex.dabul)"
          path = Bundle.main.path(forResource: "IMG_0780", ofType: "mov")!
        }
        if technique == "リバース" {
            textview.text = "\(ex.rebasu)"
         path = Bundle.main.path(forResource: "IMG_0778", ofType: "mov")!
        }
        if technique == "シングルアクセル" {
            textview.text = "\(ex.singul)"
            path = Bundle.main.path(forResource: "IMG_0777", ofType: "mov")!
        }
        if technique == "ハーモニック" {
                  textview.text = "\(ex.hamonic)"
            path = Bundle.main.path(forResource: "IMG_0776", ofType: "mov")!
              }
        if technique == "セミリバース" {
         textview.text = "\(ex.cemiriba)"
          path = Bundle.main.path(forResource: "IMG_0772", ofType: "mov")!
        }
        if technique == "カウンター" {
            textview.text = "\(ex.countor)"
           path = Bundle.main.path(forResource: "IMG_0781", ofType: "mov")!
        }
        if technique == "パームスピン" {
            textview.text = "\(ex.pamuspi)"
         path = Bundle.main.path(forResource: "IMG_0771", ofType: "mov")!
        }
        if technique == "カージオイド" {
            textview.text = "\(ex.kazioid)"
        path = Bundle.main.path(forResource: "IMG_0768", ofType: "mov")!
        }
        if technique == "シングルアクセルリバース" {
            textview.text = "\(ex.singlriba)"
            path = Bundle.main.path(forResource: "IMG_0766", ofType: "mov")!
        }
        if technique == "フィンガーレスノーマル" {
            textview.text = "\(ex.flnoma)"
            path = Bundle.main.path(forResource: "IMG_0763", ofType: "mov")!
        }
        if technique == "フィンガーレスリバース" {
            textview.text = "\(ex.flreba)"
           path = Bundle.main.path(forResource: "IMG_0765", ofType: "mov")!
        }
        if technique == "ハーフフェイクトノーマル" {
            textview.text = "\(ex.haffnoma)"
          path = Bundle.main.path(forResource: "IMG_0761", ofType: "mov")!
        }
        if technique == "ハーフフェイクトリバース" {
            textview.text = "\(ex.haffreba)"
            path = Bundle.main.path(forResource: "IMG_0762", ofType: "mov")!
        }
        if technique == "コンティニュアスシングルアクセルカージオイド" {
            textview.text = "\(ex.ctkazi)"
            path = Bundle.main.path(forResource: "IMG_0760", ofType: "mov")!
        }
       
        
        player = AVPlayer(url: URL(fileURLWithPath: path))
        player!.play()
//        player!.pause()
        
//        let tempWidth = movieview.frame.maxX - movieview.frame.minX
        
        
        
//        slider.addTarget(self, action: #selector(sliderValueChanged), for: .valueChanged)
    }
    
//    @objc func sliderValueChanged(){
//
//        let avasset = AVURLAsset(
//            url: URL(fileURLWithPath: self.path)
//        )
//        player?.seek(to: CMTimeMakeWithSeconds(
//            Int(Float64(
//                avasset.duration
//            ) * Double(slider.value) / 100),
//            preferredTimescale: Int32(NSEC_PER_SEC))
//    }
   
        
        
        
    }
    

        
        
        
        
        

        // Do any additional setup after loading the view.
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */



