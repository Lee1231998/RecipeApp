//
//  ContentView.swift
//  recipeapp
//
//  Created by Kar Mun Lee on 04/03/2022.
//

import Foundation
import SwiftUI

struct ContentView: View {
    var body: some View {
       TabBar()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(RecipesViewModel())
    }
}