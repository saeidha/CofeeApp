//
//  WebService.swift
//  sampleCoffeeApp
//
//  Created by saeid on 11/9/23.
//

import Foundation


protocol WebServiceProtocol {
    func getOrders(compeletion: @escaping ([Order]?) -> ())
}

class WebService: WebServiceProtocol{
    
    func getOrders(compeletion: @escaping ([Order]?) -> ()){
        
        guard let url = URL(string: "https://island-bramble.glitch.me/orders") else{
            compeletion(nil)
            return
        }
        
        URLSession.shared.dataTask(with: url){ data, response, error in
            guard let data = data, error == nil else {
                DispatchQueue.main.async {
                    compeletion(nil)
                }
                return
            }
            
            if let result = try? JSONDecoder().decode([Order].self, from: data){
                DispatchQueue.main.async {
                    compeletion(result)
                }
                return
            }else{
                DispatchQueue.main.async {
                    compeletion(nil)
                }
            }
        }.resume()
    }
}

class MockWebAService: WebServiceProtocol {
    func getOrders(compeletion: @escaping ([Order]?) -> ()) {
        compeletion(Order.getAll())
    }
}
