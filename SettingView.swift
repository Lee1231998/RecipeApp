//
//  SettingView.swift
//  recipeapp
//
//  Created by Kar Mun Lee on 04/03/2022.
//

import Foundation
import SwiftUI

struct SettingView: View {
    var body: some View {
        NavigationView {
            Text("Settings")
                .navigationTitle("Settings")
        }
        .navigationViewStyle(.stack)
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
