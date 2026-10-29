//
//  TitleView.swift
//  Touchdown
//
//  Created by MacBook Pro on 29/10/2026.
//

import SwiftUI

struct TitleView: View {
    var title: String
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            Spacer()
        }
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 15)
    }
}

#Preview {
    TitleView(title: "ggg")
}
