//
//  DayTwentyNineViewController.swift
//  30DaysOfSwift
//
//  Created by Yaz Burrell on 5/7/20.
//  Copyright © 2020 Yaz Burrell. All rights reserved.
//

import UIKit

class DayTwentyNineViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var resultLabel: UILabel!
    
    var data = ["¿Hola cómo estás hoy?", "Hei, kuinka voit tänään?", "Ciao, come va oggi?", "오늘 어떻게 지내니?", "こんにちは今日はどのようにしていますか", "வணக்கம் நீங்கள் இன்று எப்படி உள்ளீர்கள்?", "你好，今天好嗎？"]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.textView.text = data[0]
        self.resultLabel.text = ""
        title = "NLP Demo"
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(randomString))
        self.view.addGestureRecognizer(tapGesture)
    }
    
   @objc func randomString(){
        let random = Int.random(in: 0..<data.count)
        textView.text = data[random]
    }
   
    @IBAction func detectLang(_ sender: UIButton){
        
    }

}
