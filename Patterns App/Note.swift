//
//  NotesModel.swift
//  Patterns App
//
//  Created by Casey Gower on 12/4/17.
//  Copyright © 2017 Casey Gower. All rights reserved.
//

import UIKit

class Note {

    var title: String?
    var date: Date?
    var text: String?
   
    
    init( title: String?, date: Date?, text: String) {
        
        self.title = title
        self.date = date
        self.text = text
        
    }
    
   
}
