//
//  BeachViewController.swift
//  Beaches rating (MVC)
//
//  Created by  Джон Костанов on 28/07/2019.
//  Copyright © 2019 John Kostanov. All rights reserved.
//

import UIKit

class BeachViewController: UIViewController {
    
    @IBOutlet var beachPhoto: UIImageView!
    @IBOutlet var beachName: UILabel!
    @IBOutlet var beachRating: UILabel!
    @IBOutlet var beachNotes: UITextView!
    @IBOutlet var beachTimestamp: UILabel!
    
    var beach: Beach!

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()

        
    }
    
    func updateUI() {
        beachPhoto.image = beach.photo
        beachName.text = beach.name
        beachRating.text = beach.stars
        beachNotes.text = beach.notes
        beachTimestamp.text = beach.formatedTimestamp
    }

}
