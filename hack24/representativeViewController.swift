//
//  representativeViewController.swift
//  hack24
//
//  Created by Subomi Popoola on 2/29/20.
//  Copyright © 2020 Subomi Popoola. All rights reserved.
//

import UIKit

class representativeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBAction func backButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    var repData: [[String:String]] = [["name":"todd turner", "synopsis":"Transportation, Infrastructure, Energy & Environment (TIEE) Committee Member: General Assembly Committee Member"], ["name":"calvin hawkins","synopsis":"Health, Human Services and Public Safety (HHSPS) Committee,Chair Government Operations and Fiscal Policy (GOFP) Committee Member Planning, Housing & Economic Development (PHED) Committee Member"], ["name":"Dannielle glaros", "synopsis":"Planning, Housing & Economic Development (PHED) Committee, Chair Transportation, Infrastructure, Energy, & Environment (TIEE) Vice-Chair Government Operations and Fiscal Policy (GOFP) Committee Member"], ["name":"thomas E Dernoga","synopsis":"Government Operations and Fiscal Policy (GOFP) Committee Member Transportation, Infrastructure, Energy & Environment (TIEE) Committee Member"]]

    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.reloadData()
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return repData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "representative") as! representativeCell
        cell.synopsisLabel.text = repData[indexPath.row]["synopsis"] as! String
        let pic = repData[indexPath.row]["name"]!
        cell.picture.image = UIImage(named: pic)
        
        return cell
    }
    
    

}
