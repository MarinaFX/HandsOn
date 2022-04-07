//
//  RecipesListView.swift
//  HandsOnWatch WatchKit Extension
//
//  Created by Marina De Pazzi on 07/04/22.
//

import SwiftUI

struct RecipesListView: View {
    var recipes: [Recipe] = [Recipe(title: "Alho Poró", produceQuantity: 20.0, produceUnitOfMeasurement: "Flemis", ingredients: [Ingredient(name: "Flemis", quantityWithUnitOfMeasurement: "Flemis")], instructions: [Instruction(ingredients: [Ingredient(name: "Flemis", quantityWithUnitOfMeasurement: "Flemis")], instruction: "Flemis", timer: 300)]),
     Recipe(title: "Moranga", produceQuantity: 20.0, produceUnitOfMeasurement: "Flemis", ingredients: [Ingredient(name: "Flemis", quantityWithUnitOfMeasurement: "Flemis")], instructions: [Instruction(ingredients: [Ingredient(name: "Flemis", quantityWithUnitOfMeasurement: "Flemis")], instruction: "Flemis", timer: 300)]),
     Recipe(title: "Cogumelo", produceQuantity: 20.0, produceUnitOfMeasurement: "Flemis", ingredients: [Ingredient(name: "Flemis", quantityWithUnitOfMeasurement: "Flemis")], instructions: [Instruction(ingredients: [Ingredient(name: "Flemis", quantityWithUnitOfMeasurement: "Flemis")], instruction: "Flemis", timer: 300)]),
     Recipe(title: "Gorgonzola", produceQuantity: 20.0, produceUnitOfMeasurement: "Flemis", ingredients: [Ingredient(name: "Flemis", quantityWithUnitOfMeasurement: "Flemis")], instructions: [Instruction(ingredients: [Ingredient(name: "Flemis", quantityWithUnitOfMeasurement: "Flemis")], instruction: "Flemis", timer: 300)])]
    
    var body: some View {
        VStack {
            List(recipes, id: \.self) { recipe in
                Button(recipe.title) {
                    //fazer action para comecar receita
                }
                .font(DesignTokens.Fonts.medium14)
                .foregroundColor(DesignTokens.Colors.Neutral.highPure)
                .buttonStyle(CorneredButton())
            }
        }
        
        .navigationTitle("Risottos")
    }
}

struct RecipesListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipesListView()
    }
}
