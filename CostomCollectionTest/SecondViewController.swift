//
//  SecondViewController.swift
//  CostomCollectionTest
//
//  Created by 坪井衛三 on 2019/08/21.
//  Copyright © 2019 Eizo Tsuboi. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    

    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var colorPicker: UIPickerView!
    
    var receiveColor: UIColor = UIColor()
    var reseibePicker: String = ""
    
    var pickerCollection: [String:UIColor] = [:]
    var pickerList:[String] = ["赤","マゼンタ","紫","青","緑","黄"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.colorView.backgroundColor = receiveColor
        
        colorPicker.showsSelectionIndicator = true
        colorPicker.dataSource = self
        colorPicker.delegate = self

        // Do any additional setup after loading the view.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerList.count
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerList[row] as String
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        colorView.backgroundColor = pickerCollection[pickerList[row]]
    }

}
