//
//  Beach.swift
//  Beaches rating (MVC)
//
//  Created by  Джон Костанов on 28/07/2019.
//  Copyright © 2019 John Kostanov. All rights reserved.
//

import UIKit

struct Beach {
    var name: String
    var photo: UIImage
    var rating: Int
    var notes: String
    var timestamp: Date
}

// MARK: - Data Representation
extension Beach {
    var stars: String {
        return String(repeating: "⭐️", count: rating)
    }
    
    var formatedTimestamp: String {
        let format = DateFormatter()
        format.dateStyle = .short
        format.timeStyle = .short
        format.locale = Locale.current
        return format.string(from: timestamp)
    }
}

