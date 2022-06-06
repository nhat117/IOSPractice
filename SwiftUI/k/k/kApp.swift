//
//  kApp.swift
//  k
//
//  Created by Nhat Bui Minh on 06/06/2022.
//

import SwiftUI

@main
struct kApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
