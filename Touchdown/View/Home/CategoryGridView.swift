//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by MacBook Pro on 29/10/2026.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, alignment: .center,  spacing: columnSpacing, pinnedViews: [], content: {
                Section(
                    header: SectionView(rotateCheck: false),
                    footer: SectionView(rotateCheck: true)) {
                    ForEach(categories) { Category in
                        CategoryItemView(category: Category)
                        
                    }
                }
            })
                
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 15)
        })
    
    }
}

#Preview {
    CategoryGridView()
}
