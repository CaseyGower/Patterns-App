//
//  PatternTableViewCell.swift
//  Patterns App
//
//  Created by Casey Gower on 12/6/17.
//  Copyright © 2017 Casey Gower. All rights reserved.
//

import UIKit

class PatternTableViewCell: UITableViewCell {

    @IBOutlet weak var patternLengthLable: UILabel!
    
    @IBOutlet weak var patternTitleLable: UILabel!
    
    @IBOutlet weak var patternImageThubnail: UIImageView!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
