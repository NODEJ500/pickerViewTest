//
//  ViewController.swift
//  pickerViewTest
//
//  Created by Jun on 2021/12/10.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
  
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textField2: UITextField!
    
    var datePicker: UIDatePicker = UIDatePicker()
    var pickerView: UIDatePicker = UIDatePicker()
    
        override func viewDidLoad() {
            super.viewDidLoad()
            
           
            // ピッカー設定
            datePicker.preferredDatePickerStyle = .compact
            datePicker.datePickerMode = .date
            datePicker.locale = NSLocale(localeIdentifier: "ja_JP") as Locale
            datePicker.preferredDatePickerStyle = .wheels
            
            //ピッカー２設定
            pickerView.datePickerMode = .countDownTimer
            pickerView.preferredDatePickerStyle = .wheels
            
            // 決定バーの生成
            let toolbar = UIToolbar(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 35))
            let spacelItem = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil)
            let doneItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(done))
            toolbar.setItems([spacelItem, doneItem], animated: true)
            
            // 決定バーの生成
            let toolbar2 = UIToolbar(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 35))
            let spacelItem2 = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil)
            let doneItem2 = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(done2))
            toolbar2.setItems([spacelItem2, doneItem2], animated: true)
            
            // インプットビュー設定
            textField.inputView = datePicker
            textField.inputAccessoryView = toolbar
            textField2.inputView = pickerView
            textField2.inputAccessoryView = toolbar2
            
        }
        
        // 決定ボタン押下
        @objc func done() {
            textField.endEditing(true)
            
            // 日付のフォーマット
            let formatter = DateFormatter()
            formatter.dateFormat = "yyyy-MM-dd"
            textField.text = "\(formatter.string(from: Date()))"
        }
       @objc func done2() {
        textField2.endEditing(true)
           
           textField2.text =
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
    }
}
