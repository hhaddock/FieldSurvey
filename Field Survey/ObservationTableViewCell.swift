//
//  ObservationTableViewCell.swift
//  Field Survey
//
//  Created by Hayden Haddock on 11/1/17.
//  Copyright © 2017 Tech Innovator. All rights reserved.
//

import UIKit

class ObservationTableViewCell: UITableViewCell {
    @IBOutlet weak var classIconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
