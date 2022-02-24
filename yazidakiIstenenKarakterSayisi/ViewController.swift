//
//  ViewController.swift
//  yazidakiIstenenKarakterSayisi
//
//  Created by Furkan Sengil on 22.02.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var girilenMetin: UITextField!
    @IBOutlet weak var girilenKarakter: UITextField!
    @IBOutlet weak var sonucMetni: UILabel!
    
    @IBAction func islemButonu(_ sender: UIButton) {
        var adet = 0
        if girilenKarakter.text!.count == 1 {
        let aranan = Character(girilenKarakter.text!)
            if let metin = girilenMetin.text{
                let bosluksuzMetin = metin.replacingOccurrences(of: " ", with: "")
                for i in bosluksuzMetin {
                    if i == aranan {
                        adet+=1
                    }
                        let sonuc = String(adet)
                        sonucMetni.text = " yazılan  metinde \"\(aranan)\" karakterinden \(sonuc) tane var "
                }
            }
        }else {
            sonucMetni.text = " Arama kısmına bir harf girilmelidir,tekrar deneyiniz."
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

