//
//  ObservationClassification.swift
//  Field Survey
//
//  Created by Hayden Haddock on 11/1/17.
//  Copyright © 2017 Tech Innovator. All rights reserved.
//

import Foundation

struct ObservationClassification {
    let classification: Classification
    let title: String
    let description: String
    let date: Date
    
    init(classification:Classification, title: String, description: String, date: Date) {
        self.classification = classification
        self.title = title
        self.description = description
        self.date = date
    }
    
    init?(className: String, title: String, desc: String, date: Date){
        if let observation = Classification(rawValue: className) {
            self.init(classification: observation, title: title, description: desc, date: date)
        } else {
            return nil
        }
    }
}
