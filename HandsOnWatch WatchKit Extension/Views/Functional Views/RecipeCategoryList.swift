//
//  RecipeCategoryList.swift
//  HandsOnWatch WatchKit Extension
//
//  Created by Marina De Pazzi on 06/04/22.
//

import Foundation
import SwiftUI

struct RecipeCategoryList: View {
    @State var recipes: [Recipe] = []
    
    var body: some View {
        List(recipes, id: \.self) { recipe in
            CardView(titleLabel: recipe.title, recipeAmountLabel: String(recipes.count))
            
            .listRowBackground(Color.clear)
        }
        .listStyle(.carousel)
        
        .toolbar {
            ToolbarItem(placement: .primaryAction) {
                VStack (alignment: .leading){
                    Button("Buscar") {
                        //implementar action de busca
                    }
                }
            }
        }
        
        .navigationTitle("Hands On")
        
    }
}

struct RecipeCategoryList_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCategoryList()
    }
}
