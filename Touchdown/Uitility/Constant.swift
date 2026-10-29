//
//  Constant.swift
//  Touchdown
//
//  Created by MacBook Pro on 28/10/2026.
//

import Foundation
import SwiftUI

// DATA

let players: [PlayerModel] = Bundle.main.decode("player")
let categories: [CategoryModel] = Bundle.main.decode("category")
let products: [ProductModel] = Bundle.main.decode("product")
let brands: [BrandModel] = Bundle.main.decode("brand")
let sampleProduct: ProductModel = products[0]
// COLOR

let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray4)

// LAYOUT
extension UIApplication {
    var safeAreaTop: CGFloat {
        connectedScenes
            .compactMap { $0 as? UIWindowScene }
            .flatMap { $0.windows }
            .first { $0.isKeyWindow }?
            .safeAreaInsets.top ?? 0
    }
}

let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(),spacing: rowSpacing), count: 2)
}

// UX
// API
// IMAGE
// FONT
// STRING
// MISC
