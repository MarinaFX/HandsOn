//
//  ContentView.swift
//  HandsOnWatch WatchKit Extension
//
//  Created by Marina De Pazzi on 04/04/22.
//

import SwiftUI
import WatchKit

struct ContentView: View {
    var body: some View {
        NavigationView {
            RecipeCategoryList()
        }
        .navigationBarTitleDisplayMode(.inline)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
