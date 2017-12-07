//
//  PatternModel.swift
//  Patterns App
//
//  Created by Casey Gower on 11/27/17.
//  Copyright © 2017 Casey Gower. All rights reserved.
//

import UIKit

class Pattern{
    
    var name: String?
    var length: String?
    var ratio: String?
    var volume: String?
    var patternImageTop: UIImage
    
    
    
  public var title : String? {
        get {
            return name
        }
    }

//    public var subtitle: Int? {
//        get {
//            return length
//        }
//    }

      init( name: String, length: String, topImage: UIImage,ratio: String, volume: String) {
        
        self.name = name
        self.length = length
        self.patternImageTop = topImage
        self.ratio = ratio
        self.volume = volume
        
        
    }
   
    


}
