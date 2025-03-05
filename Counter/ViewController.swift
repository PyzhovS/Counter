//
//  ViewController.swift
//  Counter
//
//  Created by Sergey on 03.03.2025.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        textView.text = "«История изменений:»"
        textView.isEditable = false
        textView.isScrollEnabled = true
    }
    private let dateF: DateFormatter = {
        let df = DateFormatter()
        df.dateFormat = "yyyy-MM-dd HH-mm-ss"
        return df
    }()
    
    private var result = 0
    
    private func labelText() {
        label.text = " «Значение счётчика: \(result) »"
    }
    
    private func textHistory(text:String) {
        textView.text.append("\n" + "«\([dateF.string(from: Date())]):\(text)»")
    }
    
    @IBOutlet private weak var textView: UITextView!
    
    @IBAction private func minButton(_ sender: Any) {
        if result > 0 {
            result -= 1
            textHistory(text: "значение изменено на -1")
        } else {
            result = 0
            textHistory(text: "попытка уменьшить значение счётчика ниже 0")
        }
        labelText()
    }
    
    @IBAction private func maxButton(_ sender: Any) {
        result += 1
        labelText()
        textHistory(text: "значение изменено на +1")
    
    }
    @IBAction private func reset(_ sender: Any) {
        result = 0
        labelText()
        textHistory(text: "значение cброшено")
    }
    @IBOutlet private weak var label: UILabel!
    
    
    
    
   
    
    
   
    
    
}


