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
    var textBeachNotes = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        readFromFileBeachNotesTxt()
    }
    
    func readFromFileBeachNotesTxt() {
        if let path = Bundle.main.path(forResource: "beachNotes", ofType: "txt") {
            if let text = try? String(contentsOfFile: path) {
                textBeachNotes = text.components(separatedBy: "\n\n")
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "BeachSegue" else { return }
        guard let selectedPath = tableView.indexPathForSelectedRow else { return }
        
        let destination = segue.destination as! BeachViewController
        destination.beach = beaches[selectedPath.row]
        destination.beach.notes = textBeachNotes[selectedPath.row]
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
