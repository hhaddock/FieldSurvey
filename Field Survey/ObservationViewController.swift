//
//  ObservationViewController.swift
//  Field Survey
//
//  Created by Hayden Haddock on 11/1/17.
//  Copyright © 2017 Tech Innovator. All rights reserved.
//

import UIKit

class ObservationViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let observations = ObservationsJSONLoader.load(fileName: "field_observations")
    let dateFormatter = DateFormatter()
    @IBOutlet weak var obsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return observations.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "observationCell", for: indexPath)
        
        if let cell = cell as? ObservationTableViewCell {
            let observation = observations[indexPath.row]
            cell.classIconImageView.image = observation.classification.image
            cell.titleLabel.text = observation.title
            cell.dateLabel.text = dateFormatter.string(from: observation.date)
        }
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ObservationDetailsViewController ,
            let row = obsTableView.indexPathForSelectedRow?.row {
            destination.observation = observations[row]
            destination.desc = observations[row].description
        }
        
    }
}
