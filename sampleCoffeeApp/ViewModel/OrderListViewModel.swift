//
//  orderViewModel.swift
//  sampleCoffeeApp
//
//  Created by saeid on 11/9/23.
//

import Foundation
import Combine

class OrderListViewModel: ObservableObject {
    
    @Published var orders = [OrderViewModel]()
    
    private let orderWebService: WebServiceProtocol
    init(orderWebService: WebServiceProtocol){
        self.orderWebService = orderWebService
        self.fetchOrder()
    }
    
    private func fetchOrder(){
     
        self.orderWebService.getOrders(compeletion: { orders in
            guard let orders = orders else {return}
            self.orders = orders.map{OrderViewModel.init(order: $0)}
        })
    }
    
}

class OrderViewModel{
    var order: Order
    
    let id = UUID()
    var name: String {
        return self.order.name
    }
    var size: String {
        return self.order.size
    }
    var coffeeName: String {
        return self.order.coffeeName
    }
    var total: Double {
        return self.order.total
    }
    
    
    init(order: Order) {
        self.order = order
    }
}

