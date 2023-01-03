//
//  HackingWithSwiftUIApp.swift
//  HackingWithSwiftUI
//
//  Created by Shakhnoza Mirabzalova on 12/27/22.
//

import SwiftUI

@main
struct HackingWithSwiftUIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            GuessTheFlag()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
