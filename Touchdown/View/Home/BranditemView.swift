//
//  BranditemView.swift
//  Touchdown
//
//  Created by MacBook Pro on 29/10/2026.
//

import SwiftUI

struct BranditemView: View {
    
    let brand: BrandModel

    var body: some View {
        

        VStack(spacing: 0) {
            Image(brand.image)
                .resizable()
                .scaledToFit()
                .padding()
                .background(
                    Color.white,
                    in: RoundedRectangle(cornerRadius: 12)
                )
                .overlay {
                    RoundedRectangle(cornerRadius: 12)
                        .strokeBorder(Color.gray, lineWidth: 1)
                }
        }

        
    }
}

#Preview {
    BranditemView(brand: brands[0])
}
