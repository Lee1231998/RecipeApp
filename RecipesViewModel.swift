//
//  RecipesViewModel.swift
//  recipeapp
//
//  Created by Kar Mun Lee on 05/03/2022.
//

import Foundation

class RecipesViewModel: ObservableObject {
    @Published private(set) var recipes: [Recipe] = []
    
    init() {
        recipes = Recipe.all
    }
    
    func addRecipe(recipe: Recipe) {
        recipes.append(recipe)
    }
}
