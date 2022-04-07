//
//  RecipeStartView.swift
//  HandsOnWatch WatchKit Extension
//
//  Created by Lucas Dimer Justo on 07/04/22.
//

import SwiftUI

struct RecipeStartView: View {
    let recipe: Recipe
    
    var body: some View {
        ScrollView {
            VStack(spacing: 8) {
                Text("**Rendimento:** \(recipe.getProduceQuantityAsString()) \(recipe.produceUnitOfMeasurement)")
                    .frame(width: WKInterfaceDevice.current().screenBounds.size.width, alignment: .leading)
                    .font(DesignTokens.Fonts.description)
                
                Text("**Preparo:** \(recipe.time)")
                    .frame(width: WKInterfaceDevice.current().screenBounds.size.width, alignment: .leading)
                    .font(DesignTokens.Fonts.description)
                
                Text("**Ingredientes:**")
                    .frame(width: WKInterfaceDevice.current().screenBounds.size.width, alignment: .leading)
                    .font(DesignTokens.Fonts.description)
                
                ForEach(recipe.ingredients) { ingredient in
                    HStack(alignment: .top) {
                        Text("\(Image(systemName: "circle.fill"))")
                            .font(DesignTokens.Fonts.circleFill)
                            .padding(.top, 5)
                        Text("\(ingredient.quantityWithUnitOfMeasurement) de \(ingredient.name)")
                            .font(DesignTokens.Fonts.description)
                    }
                    .frame(width: WKInterfaceDevice.current().screenBounds.size.width, alignment: .topLeading)
                }
                StandardButton(type: "primary", textButton: "Começar")
                    .padding(.top, 16)
            }
        }
    }
}

struct RecipeStartView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeStartView(recipe: Recipe(title: "Teste", produceQuantity: 2, produceUnitOfMeasurement: "copos", ingredients: [Ingredient(name: "leite", quantityWithUnitOfMeasurement: "1 copo"), Ingredient(name: "Nescau", quantityWithUnitOfMeasurement: "2 colheres (sopa)"), Ingredient(name: "vinagre", quantityWithUnitOfMeasurement: "1 colher (cha)")], instructions: [Instruction(ingredients: [Ingredient(name: "leite", quantityWithUnitOfMeasurement: "1 copo"), Ingredient(name: "Nescau", quantityWithUnitOfMeasurement: "2 colheres"), Ingredient(name: "vinagre", quantityWithUnitOfMeasurement: "1 colher (cha)")], instruction: "Taca no outro Copo", timer: TimeInterval(15))], category: .risotto, time: "15 segundos"))
    }
}
