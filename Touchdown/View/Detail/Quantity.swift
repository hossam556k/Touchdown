//
//  Quantity.swift
//  Touchdown
//
//  Created by MacBook Pro on 29/10/2026.
//

import SwiftUI

struct Quantity: View {
    @State private var counter = 0
    var body: some View {
        HStack(alignment: .center, spacing: 5, content: {
            Button(action: {
                if  counter > 0 {
                    counter -= 1
                }
            }, label: {
                Image(systemName: "minus.circle")
            })
            
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            
            Button(action: {
                if counter < 100 {
                    counter += 1
                }
            }, label: {
                Image(systemName: "plus.circle")
            })
            
            Spacer()
            Button(action: {}, label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            })
         })
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

#Preview {
    Quantity()
}
