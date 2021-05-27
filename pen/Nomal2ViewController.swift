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
            textview.text = "ペン回しの中で最も基本的であり、とても大事な技です。\n〜やり方〜\n親指と人差し指、中指で真ん中より少し上を軽く持ち、中指で親指に巻き付けるように押します。そして、そのまま、親指の周りを反時計周りに一回転させ人差し指と親指でペンをキャッチして完了です。"
      //      path = Bundle.main.path(forResource: "nomal", ofType: "mp4")!
            
        }
        if technique == "ダブル" {
           textview.text = "簡単に言ってノーマルの二回転版みたいなもんです。\n〜やり方〜\nやっていることは、ほとんどノーマルと同じです。ただ、親指に巻きつくように弾いた後に大体親指の第一関節から先で二回転する技です。ポイントは、手を傾けないこと。"
   //         path = Bundle.main.path(forResource: "sanpuru", ofType: "mp4")!
        }
        if technique == "リバース" {
            textview.text =
            "簡単にいってノーマルの逆回転のようなものです。ていうか実質そうです。\n〜やり方〜\n大きく違うところは、弾き方です。ノーマルは、中指で押すのに対しリバースは人差し指を鉤状に曲げ重心の真ん中あたりを押す感じで弾き親指に時計回りに巻きつけます。コツというかポイントというかな所の情報は、人差し指で弾く時に親指でも補助しながら押してあげるといい感じに回ってくれます。あとは、弾いた後に親指をクッと左側から右側に持ってきてあげるともっと成功率が上がります。"
   //         path = Bundle.main.path(forResource: "sanpuru", ofType: "mp4")!
        }
        if technique == "シングルアクセル" {
            textview.text = "ノーマルの1.5回転板です。\n〜やり方〜\n初動はノーマルと同じですが、弾いた後に親指の第一関節あたりで1.5回転する技です。"
    //        path = Bundle.main.path(forResource: "sanpuru", ofType: "mp4")!
        }
        if technique == "ハーモニック" {
                  textview.text = "簡単に言ってノーマルとリバースを繰り返す技です。\n〜やり方〜\nノーマルをして人差し指で受け取る時に人差し指を鉤状にしてリバースをすぐできる状態で受け取り、人差し指に引っかかった瞬間にリバースをし又そのリバースの受け取りを人差し指と親指ではなくて、中指と親指で受け取りまたこちらも、中指に引っかかった瞬間にノーマルをします。それを、できる限り何度も続けていれば完成です。"
    //        path = Bundle.main.path(forResource: "sanpuru", ofType: "mp4")!
              }
        if technique == "セミリバース" {
         textview.text = "この技はまぁまぁ弾き方が特殊です。\n〜やり方〜\n普通にペンの真ん中を鉛筆持ちして、ペンを中指の第一関節にずらし、親指の指先を人差し指の第一関節あたりに持ってきます。\nそして、中指の第一関節に引っ掛けるようにして、親指以外の指全部を思いっきり開きます。そして、最初は人差し指に引っかかったりするかもしれませんが、それをする事なくてすむ力加減、そしてその上で半回転する適度な手の角度を探します。これは、多分一人一人感覚が違うのでそこは「ひた練」で探しましょう。（手の大きさ、指の長さで変わってくると思うので）"
    //        path = Bundle.main.path(forResource: "sanpuru", ofType: "mp4")!
        }
        if technique == "カウンター" {
            textview.text = "初動は、ノーマルです。その後、しっかり持たずにフィンガーレスリバースをします。この技はまずノーマルとフィンガーレスリバースを覚えなければならないので、覚えてない人は覚えておきましょう。\n〜やり方〜\nまずノーマルをします。その後人差し指のつけ根と親指のつけ根で一瞬止め、親指のつけ根でグッと押しフィンガーレスリバースをします。つけ根で止めるのが難しければ一瞬親指で持ちフィンガーレスリバースをすることによって、イメージが掴みやすいと思うます。イメージが掴めてきたら持たずに出来るようにどんどん寄せていきましょう。"
     //       path = Bundle.main.path(forResource: "sanpuru", ofType: "mp4")!
        }
        if technique == "パームスピン" {
            textview.text = "手のひらを回り続ける技です。\n〜やり方〜\n初動はノーマルですが、キャッチするギリギリのあたりで手を思いっきり開きます。最初は落ちてもいいので、引っかからずに手を開けるようにしましょう。慣れてきたら、自分でバランスをとってキャッチできるようにしましょう。ラバーのきいたペンはあまりお勧めしません。どちらかと言えば、スパチのようなペンが軸になっているペンがお勧めです。"
     //       path = Bundle.main.path(forResource: "sanpuru", ofType: "mp4")!
        }
        if technique == "カージオイド" {
            textview.text = "何度もノーマルしては、ハーフウィンドミルして、ノーマルするという技です。\n〜やり方〜\n初動はノーマルです。コツというかズルというかなところですが、少し下側を持って始めると2回転め以降が楽になります。少し下側を持ってノーマルすると、キャッチした後にペンの下側を持っている形になると思うので、そしたら人差し指と親指の間でハーフウィンドミルをします。（ハーフウィンドミルを知らない人はちょっとそんな感じか見ていてください。すごく簡単です。）そして、ひっくり返っている途中にノーマル出来そうな位置まできたら人差し指で弾いてノーマルをします。"
     //       path = Bundle.main.path(forResource: "sanpuru", ofType: "mp4")!
        }
        if technique == "シングルアクセルリバース" {
            textview.text = "シングルアクセルのリバース版です。\n〜やり方〜\n初動はリバースと同じです。そして、弾いた後親指の上（自分がやり易ければどこでも良い）で一回転させ、　リバースのキャッチと同様に親指を開き親指に巻き付けキャッチします。"
     //       path = Bundle.main.path(forResource: "sanpuru", ofType: "mp4")!
        }
        if technique == "フィンガーレスノーマル" {
            textview.text = "弾かずに、遠心力だけで親指に巻き付ける技です。\n〜やり方〜\n親指だけで下を長めに持って、ふるように右斜めしたから左斜め上に押し出します。あとは巻きついて親指に入ってくるまで待って、入ってきたらキャッチすれば成功です。"
     //       path = Bundle.main.path(forResource: "sanpuru", ofType: "mp4")!
        }
        if technique == "フィンガーレスリバース" {
            textview.text = "フィンガーレスノーマルの反対バージョンです。\n〜やり方〜\n親指だけで上を長めに持ってフィンガーレスノーマルと同じように弾いて、待っていれば入ってくるので入ってきたらキャッチして完成です。"
       //     path = Bundle.main.path(forResource: "sanpuru", ofType: "mp4")!
        }
        if technique == "ハーフフェイクトノーマル" {
            textview.text = "ノーマルの半回転版です。\n〜やり方〜\n親指の先を、中指と人差し指の間の、第一関節と第二関節の間の腹にあて、少し手首のスナップをきかせながら人差し指を曲げて、人差し指の関節の上（自分のやり易いところでいいです。）で半回転させ親指を開きキャッチします。"
       //     path = Bundle.main.path(forResource: "sanpuru", ofType: "mp4")!
        }
        if technique == "ハーフフェイクトリバース" {
            textview.text = "リバースの半回転版です。\n〜やり方〜\nハーフフェイクトノーマルのリバース版です。弾き方は、リバースと一緒です。だけど弾く力をリバースの半分程度にして、親指を引かずに親指の関節の上を半回転させ、人差し指を程よく開いてキャッチします。"
           // path = Bundle.main.path(forResource: "sanpuru", ofType: "mp4")!
        }
        if technique == "コンティニュアスシングルアクセルカージオイド" {
            textview.text = "簡単に言ってシングルアクセルをカージオイドしてそれを繰り返すという技です。\n〜やり方〜\nまず、シングルアクセルとカージオイドをそれぞれ覚えておきましょう。やり方は、まずシングルアクセルをします。そして、端の方を掴みハーフウィンドミルをしてまたシングルアクセルをするという感じです。コツは、初動のときに上の方を持って始めると1.5回転してキャッチした時にペンの下の方が、入ってくるので2回目以降がやりやすくなります。"
        //    path = Bundle.main.path(forResource: "sanpuru", ofType: "mp4")!
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



