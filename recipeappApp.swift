//
//  recipeappApp.swift
//  recipeapp
//
//  Created by Kar Mun Lee on 04/03/2022.
//

import SwiftUI

@main
struct recipeappApp: App {
    let persistenceController = PersistenceController.shared

    @StateObject var recipesViewModel = RecipesViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(recipesViewModel)
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
