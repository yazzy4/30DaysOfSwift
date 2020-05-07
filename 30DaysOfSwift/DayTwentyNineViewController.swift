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
        let tagger = NSLinguisticTagger(tagSchemes: [NSLinguisticTagScheme.language], options: 0)
        tagger.string = textView.text
        langLocaleToName(localId: tagger.dominantLanguage!)
        
    }
    
    func langLocaleToName(localId: String){
        let locale = NSLocale(localeIdentifier: localId)
        resultLabel.text = countryFromCode(code: localId) + "\n" + locale.displayName(forKey: .languageCode, value: localId)!
    }
    
    //helper function to get country id
    func countryFromCode(code: String) -> String {
        // ko : Korean
        // it : Italian
        // ta : Tamil
        // es : Spanish
        // fi : Finish
        // ja : Japanese
        switch code {
        case "ko": return "Korean"
        case "it": return "Italian"
        case "ta": return "Tamil"
        case "es": return "Spanish"
        case "fi": return "Finish"
        case "ja": return "Japanese"
        case "zh-Hant": return "Chinese(Traditional)"
        default: return "English"
        }
    }

}
