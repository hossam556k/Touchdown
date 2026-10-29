//
//  BrandGridView.swift
//  Touchdown
//
//  Created by MacBook Pro on 29/10/2026.
//

import SwiftUI

struct BrandGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, spacing: columnSpacing, content:  {
                ForEach(brands) { brand in
                    BranditemView(brand: brand)
                    
                }
            })
            .frame(height: 200)
            .padding(15)
        })
    }
}

#Preview {
    BrandGridView()
}
