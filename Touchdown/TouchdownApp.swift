//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by MacBook Pro on 28/10/2026.
//

import SwiftUI
import CoreData

@main
struct TouchdownApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
