//
//  NameAndColorCell.swift
//  Table cells
//
//  Created by Vasilii on 15/08/2019.
//  Copyright © 2019 Vasilii Burenkov. All rights reserved.
//

import UIKit

class NameAndColorCell: UITableViewCell {
    
    //при изменении значения присваиваем новое
    var name: String = "" {
        didSet {
            if (name != oldValue) {
                nameLabel.text = name
            }
        }
    }
    //при изменении значения присваиваем новое
    var color: String = "" {
        didSet {
            if (color != oldValue) {
                colorLabel.text = color
            }
        }
    }
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var colorLabel: UILabel!

    
    
    
    /*
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    */
}
