//
//  CostomCell.swift
//  CostomCollectionTest
//
//  Created by 坪井衛三 on 2019/08/21.
//  Copyright © 2019 Eizo Tsuboi. All rights reserved.
//

import UIKit

class CostomCell: UICollectionViewCell {

    @IBOutlet weak var cellView: UIView!
    @IBOutlet weak var cellLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setData(cellColor: UIColor, cellLabel: String) {
        self.cellLabel.text = cellLabel
        self.cellView.backgroundColor = cellColor
        
    }

}
