//
//  ListOrderView.swift
//  sampleCoffeeApp
//
//  Created by saeid on 11/9/23.
//

import SwiftUI

struct ListOrderView: View {
    
    @ObservedObject var viewModel: OrderListViewModel
    
    var body: some View {
        
        NavigationView{
            List(viewModel.orders, id: \.id){ order in
                OrderCellView(order: order)
            }
            .navigationTitle("Orders")
        }
    }
}

#Preview {
    ListOrderView(viewModel: OrderListViewModel(orderWebService: MockWebAService()))
}
