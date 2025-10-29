//
//  DailyPlannerApp.swift
//  DailyPlanner
//
//  Created by Yogesh K on 07/10/25.
//

import SwiftUI
import CoreData
import FirebaseCore

@main
struct DailyPlannerApp: App {
    init() {
            FirebaseApp.configure()
        print("✅ Firebase configured")
        }
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
