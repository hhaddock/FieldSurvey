//
//  Classification.swift
//  Field Survey
//
//  Created by Hayden Haddock on 11/1/17.
//  Copyright © 2017 Tech Innovator. All rights reserved.
//

import UIKit

enum Classification:String {
    case amphibian
    case bird
    case fish
    case insect
    case mammal
    case plant
    case reptile
    
    var image: UIImage? {
        return UIImage(named: self.rawValue + "Icon")
    }
}
