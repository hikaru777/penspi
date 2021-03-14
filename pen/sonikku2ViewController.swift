//
//  sonikku2ViewController.swift
//  pen
//
//  Created by Hikaru.Honda on 2020/10/04.
//  Copyright © 2020 Hikaru.Honda. All rights reserved.
//

import UIKit

class sonikku2ViewController: UIViewController {
    
    @IBOutlet var label2: UILabel!
    
    var technique = String()

    override func viewDidLoad() {
        super.viewDidLoad()
        if technique == "ソニック" {
                   label2.text = "ペン回しの定番の技であり、とても重要な技です。\nこの技をやるには、まず中指と薬指の間でフェイクトソニックが出来る必要があります。\n〜やり方〜\n初動はまず中指と薬指でペンの真ん中らへんを持ち親指に軽く引っ掛け、フェイクトソニックをします。そして、半回転したぐらいに中指を前に出し、人差し指と薬指の間でペンを一瞬持ち、薬指と中指側から、中指と人差し指側に渡った時に中指を戻してキャッチして終わりです。"
               }
        if technique == "ソニックリバース" {
            label2.text = "まぁまぁ定番の技であり大切な技です。\nこの技は簡単に言ってソニックの反対バージョンみたいなもんです。（そのまんま）だから、フェイクトソニックリバースが出来る必要があります。\n〜やり方〜\n初動は人差し指と中指でペンの下の方を持ち下側を小指側に傾け、思いっきり手を開きます。（そうすると、フェイクトソニックリバースみたいに回ってくれるのでフェイクトソニックリバース出来ない人はワンチャンいけて一石二鳥な感じになるので良かったらやってみてください。）そして、半回転したところで中指を前に出し、人差し指と薬指の間でペンを一瞬持ち、人差し指と中指側から、中指と薬指側に渡った時に中指を戻してキャッチして終わりです 。"
        }
        if technique == "フェイクトソニック" {
            label2.text = "とても定番で重要で大切な技です。\nこの技は、ソニックを行う上で避けては通れないものです。頑張って習得しましょう。\n〜やり方〜\n最初は、親指に引っ掛けて勢いをつけてやるやり方から始め感覚を掴んでいくのが早いでしょう。まずは、しっかりと一回転させてあげることを意識しましょう。真ん中ら辺を持って、中指を前人差し指を後ろにした状態から始めます。（動画見てね）一回転目以降はしっかりと人差し指を動かすようにすると回ってくれると思います。"
        }
        if technique == "フェイクトソニックリバース" {
            label2.text = "フェイクトソニックの反対版です。\nこれは、初動の持ち方から何から全部反対です。\n〜やり方〜\nこの技は、親指に引っ掛けることが出来ないので遠心力を重視してやると、段々回っていくようになります。\n下の方を持って、人差し指を前中指を後ろにした状態から始めます。（これも動画見てね）これも、一回転目以降はしっかりと人差し指を動かすようにすると回ってくれると思います。"
        }
        if technique == "ソニックひねり" {
            label2.text = "簡単に言えば薬指と中指の間で、フェイクトソニックをした後にシメトリカルパスをしたような感じです。\n安心してください。しっかり解説します。\n〜やり方〜\n最初は、薬指と中指でフェイクトソニックをし、7割位まわってきたら人差し指を前に出し、中指と人差し指の間に入ってきたら、薬指を軽く折りしっかりと親指にかかるまで回してかかったら、しっかり止めて（キャッチして）終わりです。"
        }
        if technique == "ソニックひねりリバース" {
            label2.text = "ソニックひねりの逆バージョンです。\nやるのに、ちょっと難しいようなフェイクトソニックリバースが出来る必要があります。\n〜やり方〜\n最初、人差し指と中指でフェイクトソニックリバースをし、これも7割位回ってきたら薬指を前に出し、中指と薬指に入ってきたら、人差し指を軽く折り（こちらの技は親指に掛けてキャッチが出来ないので）しっかりと受け止めて終わりです。（単発じゃ地味なんでコンボに繋ぐなりして頑張ってください。）"
        }
        if technique == "シメトリカルソニック" {
            label2.text = "ソニックの前側を回る感じの技です。簡単に言おうとするとややこしくなるので、解説していきましょう。\n〜やり方〜\n中指と薬指の間で持ち、フェイクトソニックをし、ほぼほぼ8割位回ったところで人差し指を前に出し、薬指と人差し指に持ち替え、中指を後ろに引き、中指と人差し指側に渡ってきたら、中指と人差し指に持ち替えてしっかり受け止めて終わりです。\nコツは、しっかりとフェイクトソニックで大きく回転をかけることと、中指をしっかりと引くことです。"
        }
        if technique == "シメトリカルソニックリバース" {
            label2.text = "シメトリカルソニックの逆バージョンです。\nこの技をやるのに、フェイクトソニックリバースが出来る必要があります。\n〜やり方〜\n人差し指と中指で持ちフェイクトソニックをし、これもほぼほぼ8割回ってから薬指を前に出し、人差し指と薬指に持ち替え、中指を後ろに引き、中指と薬指側に渡ってきたら、中指と薬指に持ち替えてしっかりキャッチして終わりです。\nコツは、シメトリカルソニックと同じように、フェイクトソニックリバースで大きく回転をかけることと、中指をしっかり引くことです。"
        }
        if technique == "スキップソニック" {
            label2.text = "この技は小指と薬指から始まり、薬指と中指を飛ばして人差し指と中指側にいく技です。\nフェイクトソニックが出来るといいと思います。 あとこれ言ったら終わっちゃう気がするんですが、小指と人差し指をRSVP持てるぐらいまで近づけれるとかなり成功率が上がると思います。\n〜やり方〜\n小指と薬指でフェイクトソニックをして、ソニックをするような感じで薬指を曲げるのと同時に中指も曲げて人差し指と中指に入ってきたら中指を伸ばしてキャッチして終わりです。"
        }
        if technique == "スキップソニックリバース" {
                   label2.text = "この技は、スキップソニックの反対バージョンです。\nこの技をやるのにフェイクトソニックリバース、又はソニックリバースが出来るといいと思います\nそしてこれも小指と人差し指をRSVP持てるぐらいまで近づけれるとかなり成功率が上がると思います(手の柔軟頑張ってください)。\n〜やり方〜\n1と2で持ちフェイクトソニックリバースをして、フェイクトソニックをするような感じで3を曲げるのと同時に4も曲げて5と4の間に入ってきたら4を伸ばしてキャッチして終わりです。"
               }
        if technique == "シャドウ" {
                   label2.text = "この技は手の甲側を滑らせるように指から指へと移動させる技です。\n指の上で0,5回転させる技なので少し間を開けたい時などに使うと良いかもしれません。手を伏せた状態でフェイクトソニックが出来るといいと思います。\n〜やり方〜\n3,4から1,2に移動させるやり方が基本的だと思うのでそれのやり方を書いていきたいと思います。\nまず、手を伏せた状態で3,4でペンを持ちフェイクトソニックをします。そして回っていくにつれて大体4とだいたい平行になるところがあると思います。そこでクッと手首のスナップを使って4でペンをほんの少しだけ押してあげます（極力手を動かさないように）。そして3の上で少しペンを滑らせて、半回転したところで2,3でキャッチし終わりです。\n最終目標は、フェイクトソニックリバースの回転だけで出来るようにすることです。"
               }
        if technique == "スリップトソニック" {
                   label2.text = "この技は、ソニックの形のままで耐えてもう一回転させる技です。\n〜やり方〜\n一番見慣れられているであろう、3,4から2,3に移動するやり方を解説していきたいと思います。(指先でやると成功率上がると思います。＋2,4でフェイクトソニックが出来るといいと思います。)\nまず、3,4で持ちソニックをします。そして、4,2で持った瞬間に3を思いっきり曲げて2,4で少しだけ回転をかけてあげると、ソニックの勢いにフェイクトソニックの回転がかかって最後まで回りきってくれるはずです。3にぶつかるという人は、指先でやってみてそれでも出来なければ、まぁ指の柔軟頑張るなりしてみて下さい。"
               }
        if technique == "スリップトソニックリバース" {
                   label2.text = "スリップトソニックの逆バージョンです。\n〜やり方〜\n今回は、2,3から3,4に移動するやり方を解説していきたいと思います。\n(指先でやると成功率上がると思います。＋2,4でフェイクトソニックが出来るといいと思います。)\nまず、2,3でソニックリバースをします。そして2,4で持った時に3を思いっきり曲げて2,4で少し回転をかけてあげるとソニックの勢いにフェイクトソニックリバースの回転がかかって最後まで回りきってくれるはずです。3にぶつかるという人は、指先でやってみてそれでも出来なければ、まぁ指の柔軟頑張るなりしてみて下さい。"
               }
        if technique == "フルーエントソニック" {
                   label2.text = "この技は、5,4ソニックと3,4ソニックを続けてやる技です。\n〜やり方〜\nまず、5,4でソニックをしますそして4を戻した瞬間に3を前に出して休まずに回転をかけて3,4ソニックをします。(これをやることについては、軽いペンをオススメします)文で表し難いのでVideo見て下さい。"
               }
        if technique == "フルーエントソニックリバース" {
                   label2.text = "この技は、2,3ソニックリバースと3,4ソニックリバースを続けてやる技です。\n〜やり方〜\nまず、2,3でソニックリバースをしますそして3を戻した瞬間に3を前に出して休まずに回転をかけて3,4ソニックリバースをします。(これをやることについては、軽いペンをオススメします)文で表し難いのでVideo見て下さい。"
               }
        if technique == "フルーエントソニックひねり" {
                   label2.text = "この技は、5,4ソニックひねりと3,4ソニックひねりを続けてやる技です。\n〜やり方〜\nまず、5,4でソニックひねりをしますそして3,4に渡った瞬間に3を引いて休まずに回転をかけて3,4ソニックひねりをします。文で表し難いのでVideo見て下さい。"
               }
        if technique == "フルーエントソニックひねりリバース" {
                   label2.text = "この技は、2,3ソニックひねりリバースと3,4ソニックひねりリバースを続けてやる技です。\n〜やり方〜\nまず、2,3でソニックひねりリバースをしますそして3,4に渡った瞬間に4を引いて休まずに回転をかけて3,4ソニックひねりリバースをします。文で表し難いのでVideo見て下さい。"
               }
        if technique == "ダブルチャージ" {
                   label2.text = "この技は、ソニックひねり→シメパスリバ→ソニックひねりというのを何度も永遠と続ける技です。\n〜やり方〜\n定番を解説していきたいと思います。\nまず、3,4からソニックひねりをします。そして、すぐに4を曲げます。そして、勢いを消すことなく3,4側にシメパスリバします。そしてまた勢いを消すことなく、ソニックひねりをし、戻しというのを永遠と続ける技ですので頑張ってください。"
               }
        if technique == "デビルズソニック" {
                   label2.text = "この技は、伏せソニックひねりとシャドウを繋げた技です。\n一つ一つの技を綺麗に出来るようにしてあげると、繋げやすくそして綺麗に仕上がると思います。\nデビルズスピンが出来ると感覚が掴みやすいと思います。\n〜やり方〜\nまず、手を伏せた状態で3,4でペンの上の方を持ちソニックひねりをします。その時に、しっかりとキャッチせずに流して2,3の上あたりで0.5回転させたら、人差し指をあげます。そうすると、ペンが入ってきてくれると思います。そしたらキャッチして終わりです。"
               }
        if technique == "デビルズスピン" {
                   label2.text = "この技は、ソニックひねりで勢いをつけて、そのまま3の周りを一周させる技です。\n〜やり方〜\nまず3,4でペンの上の方を持ってソニックひねりをします。そしてキャッチせずに流して、3の周りを一周させます。流す時に3で押してあげるといいと思います。\n3で押すコツを掴むには2,3でペンの下の方を持った状態から3バクリバをするとコツが掴めると思います。後はコツが掴めて確実に出来るように頑張って下さい。"
               }
        if technique == "デビルズシャドウ" {
                   label2.text = "デビルズスピンの2,3から始まるバージョン（？）というより、、、いややめておきましょう。（分かりにくくなると思うので）気にしないでください。\n〜やり方〜\nまず、手を伏せた状態で2,3でペンの下の方を持って、ペンの上の方を5側に傾けてフェイクトソニックをします。\nそして、5割回ったところで勢いを消すことなく3で押して3バクリバをします。そして3,4でキャッチすることなく流して3の周りを一回転させて、2,3でキャッチして終わりです。"
               }
        if technique == "イーストソニック" {
                   label2.text = "5,4から、2,3に半回転で渡してあげる技です。\n〜やり方〜\nまず、最初は5,4でペンの下の方を持って、手を半分倒した状態でガンマンよりのパスで2,3に渡し、勢いを消すことなくフェイクトソニックをしてキャッチして終わりです。\nまずはこれが出来るようになりましょう。\nこれが出来るようになったら、手を起こした状態で出来るようにしましょう。\n手を起こした状態でやるコツは5,4のパスをフェイクトソニックに変えてしっかりと、3,2の間に自然と入っていくぐらい回転かけてあげるとスムーズに綺麗に出来ると思います。\n（動画見てね）"
               }
        if technique == "スードウソニック" {
                   label2.text = "ソニックをしてるようでしてない技、、、むずい、、、解説いきましょう(_ _).｡o○\nまずこの技をやるにはソニックが出来るとコツが掴みやすいと思います。\n後2,4でフェイクトソニックが出来るともっと早く習得出来ると思います。\n〜やり方〜\nまず、ソニックをするときに2,4で持つことがあると思うんですけど、そこで3,4から2,3に渡さずに半回転させて3,4に戻して勢いを消さずにフェイクトソニックして、1に引っ掛けてこの技単体では終わりです。"
               }
        if technique == "ムーンウォークソニック" {
                          label2.text = "滑らかに出来れば出来るほど綺麗に見える面白い技なので是非習得してみてください。\n2,4で持ってフェイクトソニックが出来ると習得しやすいと思います。\nあと、2,3と3,4のそれぞれでフェイクトソニックが出来る必要があります。\n〜やり方〜\nまず、2,3の指先でペンの真ん中〜下あたりを持ってフェイクトソニックをして、残り2,3割ぐらいまで回ってきたら3を曲げて2,4で持ち2,3のフェイクトソニックの勢いを使って3,4側まで回して3,4側に渡ったら3を伸ばして3,4に持ち変えそのままの勢いでフェイクトソニックをして1に引っ掛けてこの技自体は終わりです。"
                      }
        if technique == "ダブルソニック" {
                          label2.text = "ソニックと名前にはついていますが、シャドウに近いです。\nシャドウを覚えているとコツが掴みやすくなると思います。\nなぜなら、シャドウに0.5回転付け足すだけなので。\n〜やり方〜\n最初で言った通りシャドウに0.5回転＋するだけなので、まずシャドウを覚えることをお勧めします。\n（一応シャドウ覚えてない人向けに書きます。ご了承ください。）\nまず、手を伏せた状態で3,4でペンの下の方を持ちます。そして、フェイクトソニックをします。回していくにつれて4とだいたい平行になるところがあると思います。そこでクッと手首のスナップを使って4で強めにだけど極力手を動かさないで（ペンが吹き飛ばない程度に）ペンを押してあげます。そして3の上で少しペンを滑らせて、一回転したところで1,2でキャッチし終わりです。"
                      }
        if technique == "フェイクトシャドウ" {
                          label2.text = "ペンを持っている指だけで始まって終わる技です。\n（例えば、3,4で始まったら3,4でキャッチして終わる技です。）\n\nシャドウが出来るといいと思います〜やり方〜\n手を伏せた状態で3,4でペンを持ちフェイクトソニックをします。回していくにつれて4とだいたい平行になるところがあると思います。そこでクッと手首のスナップを使って4でペンをほんの少しだけ押してあげます。（極力手を動かさないように）そして3か4(ちょいムズイけど4の方がお勧めかも、まぁ両方で出来るようにしておいた方がいいですけどね-_-b)の上で少しペンを滑らせて、半回転したところで、また3,4でキャッチし終わりです\n最終目標は、フェイクトソニックリバースの回転だけで出来るようにすることです。。"
                      }
        if technique == "フェイクトシャドウリバース" {
            label2.text = "フェイクトシャドウの反対バージョンです。\nていうか、ほとんどネオバクだと思うんですけど、、、いや、やめましょう何か違いがあるんですよね（？）これに関してはマジで聞きたい（マジすいません）\n多分自分で回転かけて0.5回転させるか遠心力に頼ってやるかの違いだと思います\n〜やり方〜\nマジで違いがちょっとだけしかないのでしっかり分かるように、頑張って書きます。\nまず、手を伏せた状態で3,4でペンの下の方を持ちます（3,4でやる場合）。そしてフェイクトソニックリバースをするにつれて3とだいたい平行になるところがあると思います。そこでクッと手首のスナップを使って3でペンをほんの少しだけ押してあげます。（極力手を動かさないように）そして3の上で少しペンを滑らせて、半回転したところでまた3,4でキャッチし終わりです。\nとシャドウ系は書いていますが、この技はコツが掴めない場合、ペンを3で押す代わりに\n3とペンが垂直になったところで、ネオバクを極力手を動かさずにやってコツを少しずつ掴んでいくのもありだと思います。\n最終目標は、フェイクトソニックリバースの回転だけで出来るようにすることです。頑張ってください(^-^)/"
            }
        if technique == "シャドウリバース" {
            label2.text = "シャドウの反対バージョンです。\n〜やり方〜\nまず、手を伏せた状態で2,3でペンの下の方を持ちフェイクトソニックリバースをします。回していくにつれて2とだいたい平行になるところがあると思います。そこでクッと手首のスナップを使って2でペンをほんの少しだけ押してあげます（極力手を動かさないように）。そして2の上で少しペンを滑らせて、半回転したところで1,2でキャッチし終わりです。\nこの技のコツが掴めない場合、ペンを2で押す代わりに\n2とペンが垂直になったところで、ネオバクを極力手を動かさずにやってコツを少しずつ掴んでいくのもありだと思います。\n最終目標は、フェイクトソニックリバースの回転だけで出来るようにすることです。"
        }
        if technique == "ソニックバスト" {
            label2.text = "ソニックとバクリバの縦回転（？）を合わせた技です。\nなので、ソニックと2,4で持った状態で\n手を伏せる勢いで縦回転バクリバが出来るといいと思います。\n〜やり方〜\nまず、手を起こした状態で3,4でペンの下の方を持ってソニックをします。\nそして、6,7割回ったところでなんとなく2と垂直になるところがあると思うんですけど、そこで2,3に持ち替えずに\n2,4で持ったまま一気に手を伏せて縦回転をかけます。\nそして、手を伏せた時に軽く指を曲げて、縦回転を受け入れるスペースを作ります。\nそして、回りきったところで2,3で掴んで終わりです。"
        }
        if technique == "フラッシュソニック" {
            label2.text = " この技は、繊細で柔軟な指使いが必要になると思います。\n出来るようになると複雑に見えるコンボやfsが組みやすくなると思います。\n〜やり方〜\nまず、ペンの上の方を2側に向け、\n真ん中のあたりを3,4の指先で持ち、フェイクトソニックをします。\nそして、9,10割（ほぼ一周）したところで、4を曲げながら2,5に持ち替え、\n持ち替えた時は、5が下で2が上の状態でペンを持ってると思うんですけど、その2,5をずらして5が上で2が下の状態になるようにします。\nそして、この状態になった時、3と交差すると思うので、そしたら3,4に持ち替えてフェイクトソニックをして1にかけて終わりです。"
        }
        if technique == "" {
            label2.text = ""
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
