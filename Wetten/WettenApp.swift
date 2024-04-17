//
//  WettenApp.swift
//  Wetten
//
//  Created by vierklee on 17.04.24.
//

import SwiftUI

@main
struct WettenApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()            
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
