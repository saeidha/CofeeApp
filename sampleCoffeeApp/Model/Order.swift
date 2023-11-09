//
//  Order.swift
//  sampleCoffeeApp
//
//  Created by saeid on 11/9/23.
//

import Foundation

struct Order: Codable{
    let name: String
    let size: String
    let coffeeName: String
    let total: Double
}


extension Order{
    static func getAll() -> [Order]{
        return [Order(name: "Cappuccino", size: "20", coffeeName: "Cappuccino", total: 200),
                Order(name: "Expresso", size: "30", coffeeName: "Expresso", total: 300),
                Order(name: "Regular", size: "10", coffeeName: "Regular", total: 100)]
    }
}
