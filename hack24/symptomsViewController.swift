//
//  symptomsViewController.swift
//  hack24
//
//  Created by Subomi Popoola on 2/29/20.
//  Copyright © 2020 Subomi Popoola. All rights reserved.
//

import UIKit

class symptomsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    var symptoms = ["Cashless Businesses",
        "Increased presence of police protection",
        "Rents and home values suddenly rise",
        "The neighborhood is already located near",
        "subway and bus lines.",
        "Increased construction",
        "Influx of tourists",
        "Improved public transportation.",
        "Disappearance of graffiti.",
        "The presence of a major employer.",
        "Influx of small, specialized boutiques, hipster bars, quirky restaurants, and “real coffee” shops.",
        "The neighborhood is now being referred to by a new name.",
       "Introduction of light rail."
    ]
   
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
        tableView.reloadData()
    }
    

     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return symptoms.count
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "symptoms") as! symptomCell
        cell.taxtLabel?.text = symptoms[indexPath.row] as! String
        return cell
       }

}
