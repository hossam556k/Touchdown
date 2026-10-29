//
//  FeatruedTabView.swift
//  Touchdown
//
//  Created by MacBook Pro on 28/10/2026.
//

import SwiftUI

struct FeatruedTabView: View {
    var body: some View {
        TabView {
            ForEach(players) { player in
                FeaturedItemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
        }
        .frame(height: 350)
        .tabViewStyle(.page(indexDisplayMode: .always))
       
    }
}

#Preview {
    FeatruedTabView()
}
