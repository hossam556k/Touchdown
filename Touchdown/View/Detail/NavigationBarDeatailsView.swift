//
//  NavigationBarDeatailsView.swift
//  Touchdown
//
//  Created by MacBook Pro on 29/10/2026.
//

import SwiftUI

struct NavigationBarDeatailsView: View {
    // MARK: - PROPERTY
    @Environment(Shop.self) private var shop   // read the shared instance

    var body: some View {
        HStack {
            Button(action: {
                withAnimation(.easeIn) {
                    shop.selectedProduct = nil
                    shop.showingProduct = false
                }
            }, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            })

            Spacer()

            Button(action: {}, label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            })
        }
    }
}

#Preview {
    NavigationBarDeatailsView()
        .environment(Shop())   // previews need their own instance
}
