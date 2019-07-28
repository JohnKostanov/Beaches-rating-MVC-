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

extension Beach {
    static var all: [Beach] {
        return [
            Beach(name: "Нерха", photo: UIImage(named: "Нерха")!, rating: 12, notes: "Пляж отлично подойдет для семей с детьми, так как он прозрачный и неглубокий", timestamp: Date()),
            Beach(name: "Ситжес", photo: UIImage(named: "Ситжес")!, rating: 11, notes: "Здесь вы можете найти одни из лучших пляжей в Испании, крошечные бухты, места для семейного отдыха и огромные песчаные пляжи, где можно прекрасно провести время благодаря множеству доступных развлечений.", timestamp: Date()),
            Beach(name: "Сантандер", photo: UIImage(named: "Сантандер")!, rating: 10, notes: "Насладитесь видами моря во время прогулки по длинной набережной Сантандерского залива", timestamp: Date())
        ]
    }
}
