//
//  FeaturedItemView.swift
//  Touchdown
//
//  Created by MacBook Pro on 28/10/2026.
//

import SwiftUI

struct FeaturedItemView: View {
    // MARK: - PROPERTIES
    let player: PlayerModel
    
    // MARK: - BODY
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
         
    }
}

#Preview {
    FeaturedItemView(player: players[0])
}
