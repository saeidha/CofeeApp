//
//  Coffee.swift
//  sampleCoffeeApp
//
//  Created by saeid on 11/9/23.
//

import Foundation

struct Coffee{
    let name: String
    let imageUrl: String
    let price: Double
}

extension Coffee{
    static func getAll() -> [Coffee]{
        return [Coffee(name: "Cappuccino", imageUrl: "Cappuccino", price: 10),
                Coffee(name: "Expresso", imageUrl: "Expresso", price: 10),
                Coffee(name: "Regular", imageUrl: "Regular", price: 10)]
    }
}
