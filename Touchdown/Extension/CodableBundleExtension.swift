//
//  CodableBundleExtension.swift
//  Touchdown
//
//  Created by MacBook Pro on 28/10/2026.
//


import Foundation

extension Bundle {

    func decode<T: Decodable>(_ file: String) -> T {

        guard let url = self.url(
            forResource: file,
            withExtension: "json"
        ) else {
            fatalError("Failed to locate \(file).json in bundle")
        }

        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file).json from bundle")
        }

        let decoder = JSONDecoder()

        do {
            return try decoder.decode(T.self, from: data)
        } catch {
            fatalError("Failed to decode \(file).json: \(error)")
        }
    }
}
