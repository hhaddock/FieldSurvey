//
//  ObservationsJSONLoader.swift
//  Field Survey
//
//  Created by Hayden Haddock on 11/1/17.
//  Copyright © 2017 Tech Innovator. All rights reserved.
//

import Foundation

class ObservationsJSONLoader {
    
    
    class func load(fileName: String) -> [ObservationClassification] {
        var observations = [ObservationClassification]()
        
        if let path = Bundle.main.path(forResource: fileName, ofType:"json"),
           let data = try? Data(contentsOf: URL(fileURLWithPath: path))
        {
            observations = ObservationsJSONParser.parse(data)
        }
        return observations
    }
}
