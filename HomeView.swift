//
//  HomeView.swift
//  recipeapp
//
//  Created by Kar Mun Lee on 04/03/2022.
//

import Foundation
import SwiftUI

struct HomeView: View {
    @EnvironmentObject var recipesVM: RecipesViewModel
    
    var body: some View {
        NavigationView {
                ScrollView {
                    RecipeList(recipes: recipesVM.recipes)
                }
                .navigationTitle("My Recipes")
        }
        .navigationViewStyle(.stack)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
