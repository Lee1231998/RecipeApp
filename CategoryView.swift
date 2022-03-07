//
//  CategoryView.swift
//  recipeapp
//
//  Created by Kar Mun Lee on 05/03/2022.
//

import Foundation
import SwiftUI

struct CategoryView: View {
    var category: Category
    
    var recipes: [Recipe] {
        return Recipe.all.filter { $0.category == category.rawValue }
    }
    
    var body: some View {
        ScrollView {
            RecipeList(recipes: recipes)
        }
        .navigationTitle(category.rawValue + "s")
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(category: Category.dessert)
            .environmentObject(RecipesViewModel())
    }
}
