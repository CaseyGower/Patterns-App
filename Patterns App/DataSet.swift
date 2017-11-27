//
//  DataSet.swift
//  Patterns App
//
//  Created by Casey Gower on 11/27/17.
//  Copyright © 2017 Casey Gower. All rights reserved.
//

import UIKit

class DataSet: UITableViewController {
    static var sampleData = [
        PatternModel(name: "Gateway Arch", length: 42, topImage: #imageLiteral(resourceName: "Gateway Arch Top"), compositeImage: #imageLiteral(resourceName: "Gateway Arch Composite"), ratio: 6.58, volume: 25.99),
        PatternModel(name: "Gateway Arch", length: 42, topImage: #imageLiteral(resourceName: "Gateway Arch Top"), compositeImage: #imageLiteral(resourceName: "Gateway Arch Composite"), ratio: 6.58, volume: 25.99),
        PatternModel(name: "Gateway Arch", length: 42, topImage: #imageLiteral(resourceName: "Gateway Arch Top"), compositeImage: #imageLiteral(resourceName: "Gateway Arch Composite"), ratio: 6.58, volume: 25.99),
        PatternModel(name: "Gateway Arch", length: 42, topImage: #imageLiteral(resourceName: "Gateway Arch Top"), compositeImage: #imageLiteral(resourceName: "Gateway Arch Composite"), ratio: 6.58, volume: 25.99)
    ]
    
}