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
    var ratio: Double?
    var volume: Double?
    var patternImageTop: UIImage
    var patternImageComposite: UIImage
    
    
    
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

      init( name: String, length: String, topImage: UIImage, compositeImage: UIImage, ratio: Double, volume: Double) {
        
        self.name = name
        self.length = length
        self.patternImageTop = topImage
        self.patternImageComposite = compositeImage
        self.ratio = ratio
        self.volume = volume
        
        
    }
   
    


}
