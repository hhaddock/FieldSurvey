//
//  ObservationDetailsViewController.swift
//  Field Survey
//
//  Created by Hayden Haddock on 11/1/17.
//  Copyright © 2017 Tech Innovator. All rights reserved.
//

import UIKit

class ObservationDetailsViewController: UIViewController {
    
    var observation: ObservationClassification?
    var dateFormatter = DateFormatter()
    var desc:String?

    @IBOutlet weak var observationImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        
        observationImageView.image = observation?.classification.image
        titleLabel.text = observation?.title
        descriptionLabel.text = desc
        if let date = observation?.date {
            dateLabel.text = dateFormatter.string(from: date)
        } else {
            dateLabel.text = ""
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
