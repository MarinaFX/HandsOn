//
//  RecipeCategoryList.swift
//  HandsOnWatch WatchKit Extension
//
//  Created by Marina De Pazzi on 06/04/22.
//

import Foundation
import SwiftUI

struct RecipeCategoryListView: View {
    @State var recipes: [Recipe] = [Recipe(title: "flemis", produceQuantity: 20.0, produceUnitOfMeasurement: "flemis", ingredients: [Ingredient(name: "flemis", quantityWithUnitOfMeasurement: "flemis")], instructions: [Instruction(ingredients: [Ingredient(name: "flemis", quantityWithUnitOfMeasurement: "flemis")], instruction: "flemis", timer: 300)]),
        Recipe(title: "flemis", produceQuantity: 20.0, produceUnitOfMeasurement: "flemis", ingredients: [Ingredient(name: "flemis", quantityWithUnitOfMeasurement: "flemis")], instructions: [Instruction(ingredients: [Ingredient(name: "flemis", quantityWithUnitOfMeasurement: "flemis")], instruction: "flemis", timer: 300)]),
        Recipe(title: "flemis", produceQuantity: 20.0, produceUnitOfMeasurement: "flemis", ingredients: [Ingredient(name: "flemis", quantityWithUnitOfMeasurement: "flemis")], instructions: [Instruction(ingredients: [Ingredient(name: "flemis", quantityWithUnitOfMeasurement: "flemis")], instruction: "flemis", timer: 300)]),
        Recipe(title: "flemis", produceQuantity: 20.0, produceUnitOfMeasurement: "flemis", ingredients: [Ingredient(name: "flemis", quantityWithUnitOfMeasurement: "flemis")], instructions: [Instruction(ingredients: [Ingredient(name: "flemis", quantityWithUnitOfMeasurement: "flemis")], instruction: "flemis", timer: 300)])]
    
    var body: some View {
        List(recipes, id: \.self) { recipe in
            NavigationLink(destination: RecipesListView()) {
                CardView(titleLabel: recipe.title, countLabel: String(recipes.count))
            }
            
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

struct RecipeCategoryListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCategoryListView()
    }
}
