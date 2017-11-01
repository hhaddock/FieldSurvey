//
//  ObservationsJSONParser.swift
//  Field Survey
//
//  Created by Hayden Haddock on 11/1/17.
//  Copyright © 2017 Tech Innovator. All rights reserved.
//

import Foundation

class ObservationsJSONParser {
    
    static let dateFormatter = DateFormatter()
    
    class func parse(_ data: Data) -> [ObservationClassification] {
        var observations = [ObservationClassification]()
        dateFormatter.dateFormat = "YYYY-MM-dd HH:mm"
        
        if let json = try? JSONSerialization.jsonObject(with: data, options:[]),
            let root = json as? [String: Any],
            let status = root["status"] as? String,
            status == "ok" {
            if let encounters = root["observations"] as? [Any] {
                for encounter in encounters {
                    if let encounter = encounter as? [String: String] {
                        if let className = encounter["classification"],
                           let title = encounter["title"],
                           let description = encounter["description"],
                           let dateString = encounter["date"],
                           let date = dateFormatter.date(from: dateString){
                            if let observationClass = ObservationClassification(className: className, title: title, desc: description, date: date){
                                observations.append(observationClass)
                            }
                        }
                    }
                }
            }
        }
        
        return observations
    }
}
