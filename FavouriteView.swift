//
//  FavouriteView.swift
//  recipeapp
//
//  Created by Kar Mun Lee on 04/03/2022.
//

import Foundation
import SwiftUI

struct FavouriteView: View {
    var body: some View {
        NavigationView {
            Text("You haven't saved any recipe yet.")
                .navigationTitle("Favourite")
        }
        .navigationViewStyle(.stack)
    }
}

struct FavouriteView_Previews: PreviewProvider {
    static var previews: some View {
        FavouriteView()
    }
}
