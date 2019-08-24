//
//  CollectionViewController.swift
//  CostomCollectionTest
//
//  Created by 坪井衛三 on 2019/08/21.
//  Copyright © 2019 Eizo Tsuboi. All rights reserved.
//

import UIKit

private let reuseIdentifier = "cell"

class CollectionViewController: UICollectionViewController {
    
    var colorCollectioncell:[String] = []
    var colorCollection: [String:UIColor] = [
        "赤": UIColor(red: 242/255, green: 115/255, blue: 152/255, alpha: 1),
        "マゼンタ": UIColor(red: 159/255, green: 45/255, blue: 228/255, alpha: 1),
        "紫": UIColor(red: 155/255, green: 89/255, blue: 182/255, alpha: 1),
        "青": UIColor(red: 64/255, green: 170/255, blue: 239/255, alpha: 1),
        "緑": UIColor(red: 88/255, green: 190/255, blue: 137/255, alpha: 1),
        "黄": UIColor(red: 255/255, green: 242/255, blue: 103/255, alpha: 1)
    ]
    var giveColorCell: String = ""
    var giveColor: UIColor = UIColor()
    var givePicker: String = ""


    override func viewDidLoad() {
        super.viewDidLoad()

        for _ in 0...100{
            let red:String = "赤"
            colorCollectioncell.append(red)
        }

        // Register cell classes
        let nib = UINib(nibName: "CostomCell", bundle: nil)
        self.collectionView!.register(nib, forCellWithReuseIdentifier: reuseIdentifier)
        


        // Do any additional setup after loading the view.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 100
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! CostomCell
        cell.setData(cellColor: colorCollection[colorCollectioncell[indexPath.row]]!, cellLabel: colorCollectioncell[indexPath.row])
        // Configure the cell
    
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {

        print("check1")
        giveColorCell = colorCollectioncell[indexPath.row] //secondViewのpickerに表示する文字
        giveColor = colorCollection[colorCollectioncell[indexPath.row]]! //secondViewのbackgroundcolorの色
        performSegue(withIdentifier: "cellSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondViewController: SecondViewController = segue.destination as! SecondViewController
        
        secondViewController.receiveColor = self.giveColor
        secondViewController.reseibePicker = self.giveColorCell
        secondViewController.pickerCollection = self.colorCollection
             print("check2")
        self.index
    }
    

    

    
}

