//
//  extensionBeach.swift
//  Beaches rating (MVC)
//
//  Created by  Джон Костанов on 29/07/2019.
//  Copyright © 2019 John Kostanov. All rights reserved.
//
import UIKit

extension Beach {
    static var all: [Beach] {
        return [
            Beach(name: "Нерха", photo: UIImage(named: "01. Нерха")!, rating: 7, notes: String(), timestamp: Date()),
            
            Beach(name: "Ситжес", photo: UIImage(named: "02. Ситжес")!, rating: 10, notes: String(), timestamp: Date()),
            
            Beach(name: "Сантандер", photo: UIImage(named: "03. Сантандер")!, rating: 9, notes: String(), timestamp: Date()),
            
            Beach(name: "Коста-Брава", photo: UIImage(named: "04. Коста-Брава")!, rating: 8, notes: String(), timestamp: Date()),

            Beach(name: "Бенидорм", photo: UIImage(named: "05. Бенидорм")!, rating: 7, notes: String(), timestamp: Date()),

            Beach(name: "Корралехо", photo: UIImage(named: "06. Корралехо")!, rating: 6, notes: String(), timestamp: Date()),

            Beach(name: "Марбелья", photo: UIImage(named: "07. Марбелья")!, rating: 11, notes: String(), timestamp: Date()),

            Beach(name: "Тенерифы", photo: UIImage(named: "08. Тенерифы")!, rating: 7, notes: String(), timestamp: Date()),

            Beach(name: "Тарифа", photo: UIImage(named: "09. Тарифа")!, rating: 5, notes: String(), timestamp: Date()),
            
            Beach(name: "Ибица", photo: UIImage(named: "10. Ибица")!, rating: 9, notes: String(), timestamp: Date()),
            
            Beach(name: "Маспаломас", photo: UIImage(named: "11. Маспаломас")!, rating: 6, notes: String(), timestamp: Date()),

            Beach(name: "Майорка", photo: UIImage(named: "12. Майорка")!, rating: 8, notes: String(), timestamp: Date())
        ]
    }
}
