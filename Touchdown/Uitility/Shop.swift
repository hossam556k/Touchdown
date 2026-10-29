//
//  Shop.swift
//  Touchdown
//
//  Created by MacBook Pro on 29/10/2026.
//
import SwiftUI
import Observation

@Observable
final class Shop {
    var selectedProduct: ProductModel? = nil

    // Derived from selectedProduct, but assignable, so old code still compiles
    var showingProduct: Bool {
        get { selectedProduct != nil }
        set { if !newValue { selectedProduct = nil } }
    }
}
