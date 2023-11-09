//
//  OrderCellView.swift
//  sampleCoffeeApp
//
//  Created by saeid on 11/9/23.
//

import SwiftUI

struct OrderCellView: View {
    
    var order: OrderViewModel
    var body: some View {
        
        HStack{
            Image(order.name)
                .resizable()
                .frame(width: 100,height: 100)
                .cornerRadius(10)
            
            VStack(alignment: .leading){
                Text(order.name)
                
                HStack {
                    Text(order.coffeeName)
                    Text(order.size)
                }
            }
        }
    }
}

#Preview {
    OrderCellView(order: Order.getAll()[0])
}
