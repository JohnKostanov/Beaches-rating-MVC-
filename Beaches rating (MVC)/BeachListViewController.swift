//
//  BeachListViewController.swift
//  Beaches rating (MVC)
//
//  Created by  Джон Костанов on 28/07/2019.
//  Copyright © 2019 John Kostanov. All rights reserved.
//

import UIKit

class BeachListViewController: UIViewController {
    
    // Connect view to the controller
    @IBOutlet var tableView: UITableView!
    
    // Connect model to the controller
    var beaches = Beach.all

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }


}

extension BeachListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return beaches.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BeachCell")!
        
        // configure cell...
        let beach = beaches[indexPath.row]
        cell.textLabel?.text = beach.name
        cell.imageView?.image = beach.photo
        cell.detailTextLabel?.text = beach.stars
        
        return cell
    }
    
    
}