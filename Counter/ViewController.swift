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
        // Do any additional setup after loading the view.
        
    }
    
    @IBOutlet weak var textView: UITextView!
    
    @IBAction func minButton(_ sender: Any) {
        if result > 0 {
            result -= 1
            textHistiry(text: "значение изменено на -1")
        } else {
            result = 0
            textHistiry(text: "попытка уменьшить значение счётчика ниже 0")
        }
        labelText()
    }
    
    @IBAction func maxButton(_ sender: Any) {
        result += 1
        labelText()
        textHistiry(text: "значение изменено на +1")
        
    }
    @IBAction func reset(_ sender: Any) {
        result = 0
        labelText()
        textHistiry(text: "значение cброшено")
    }
    @IBOutlet weak var label: UILabel!
    
    var result = 0
    
    private func labelText() {
        label.text = " «Значение счётчика: \(result) »"
    }
   
    private func textHistiry(text:String) {
        textView.text.append("\n" + "«\([dateF.string(from: Date())]):\(text)»")
    }
    
    private let dateF: DateFormatter = {
        let df = DateFormatter()
        df.dateFormat = "yyyy-MM-dd HH-mm-ss"
        return df
    }()
    
    
}


