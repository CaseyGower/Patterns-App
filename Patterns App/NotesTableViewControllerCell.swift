//
//  NotesTableViewControllerCell.swift
//  Patterns App
//
//  Created by Casey Gower on 12/6/17.
//  Copyright © 2017 Casey Gower. All rights reserved.
//

import UIKit

class NotesTableViewControllerCell: UITableViewCell{
    
    @IBOutlet weak var notesCellTitle: UILabel!
    @IBOutlet weak var notesCellDetail: UILabel!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)}
}
