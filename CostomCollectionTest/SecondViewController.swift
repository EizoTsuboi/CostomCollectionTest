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
    var reseivePicker: String = ""
    var reseiveIndex: IndexPath = IndexPath()
    
    var pickerCollection: [String:UIColor] = [:]
    var pickerList:[String] = ["赤","マゼンタ","紫","青","緑","黄"]
    var selectPicker:String = ""
//    var selectPickerIndex:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.colorView.backgroundColor = receiveColor
//
        colorPicker.showsSelectionIndicator = true
        colorPicker.dataSource = self
        colorPicker.delegate = self
        print("test1")
       
        let selectPickerIndex: Int? = self.pickerList.index(of: reseivePicker)!
        self.colorPicker.selectRow(selectPickerIndex!, inComponent: 0, animated: false)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerList.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        print("test2")
        return pickerList[row] as String
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("didselect")
        colorView.backgroundColor = pickerCollection[pickerList[row]]
        selectPicker = pickerList[row]

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let collectionViewController: CollectionViewController = segue.destination as! CollectionViewController
        
        collectionViewController.colorCollectioncell[reseiveIndex.row] = selectPicker
        print("CollectionViewに戻る")
    }
    

}
