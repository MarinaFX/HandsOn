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
                    .font(DesignTokens.Fonts.regular14)
                
                Text("**Preparo:** \(recipe.time)")
                    .frame(width: WKInterfaceDevice.current().screenBounds.size.width, alignment: .leading)
                    .font(DesignTokens.Fonts.regular14)
                
                Text("**Ingredientes:**")
                    .frame(width: WKInterfaceDevice.current().screenBounds.size.width, alignment: .leading)
                    .font(DesignTokens.Fonts.regular14)
                
                ForEach(recipe.ingredients) { ingredient in
                    HStack(alignment: .top) {
                        Text("\(Image(systemName: "circle.fill"))")
                            .font(DesignTokens.Fonts.circleFill)
                            .padding(.top, 5)
                        Text("\(ingredient.quantityWithUnitOfMeasurement) de \(ingredient.name)")
                            .font(DesignTokens.Fonts.regular14)
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
        RecipeStartView(recipe: Recipe(title: "Bolo de chocolate",
                                       produceQuantity: 2.0,
                                       produceUnitOfMeasurement: "pratos",
                                       ingredients: [Ingredient(name: "Ovos",quantityWithUnitOfMeasurement: "4 unidades"),
                                                     Ingredient(name: "Açucar",quantityWithUnitOfMeasurement: "240"),
                                                     Ingredient(name: "Chocolate em pó",quantityWithUnitOfMeasurement: "240g"),
                                                     Ingredient(name: "Óleo",quantityWithUnitOfMeasurement: "240ml"),
                                                     Ingredient(name: "Água",quantityWithUnitOfMeasurement: "240ml"),
                                                     Ingredient(name: "Farinha de trigo",quantityWithUnitOfMeasurement: "480g"),
                                                     Ingredient(name: "Fermento",quantityWithUnitOfMeasurement: "10g"),
                                                     Ingredient(name: "Manteiga",quantityWithUnitOfMeasurement: "10g")],
                                       instructions: [Instruction(ingredients: [Ingredient(name: "Forno", quantityWithUnitOfMeasurement: "180°")],instruction: "Pré-aqueça", timer: 0),
                                                      Instruction(ingredients: [Ingredient(name: "Açucar", quantityWithUnitOfMeasurement: "240g")], instruction: "Adicione", timer: 0),
                                                      Instruction(ingredients: [Ingredient(name: "Chocolate em pó", quantityWithUnitOfMeasurement: "240g")],instruction: "Adicione", timer: 0),
                                                      Instruction(ingredients: [Ingredient(name: "Ovos", quantityWithUnitOfMeasurement: "4 unidades")],instruction: "Adicione e misture", timer: 0),
                                                      Instruction(ingredients: [Ingredient(name: "Óleo", quantityWithUnitOfMeasurement: "4 240ml")],instruction: "Adicione e misture", timer: 0),
                                                      Instruction(ingredients: [Ingredient(name: "Água", quantityWithUnitOfMeasurement: "4 unidades")],instruction: "Adicione e misture", timer: 0),
                                                      Instruction(ingredients: [Ingredient(name: "Água", quantityWithUnitOfMeasurement: "4 240g"),
                                                                                Ingredient(name: "Farinha", quantityWithUnitOfMeasurement: "240g")
                                                                               ],instruction: "Adicione aos poucos e misture", timer: 0),
                                                      Instruction(ingredients: [Ingredient(name: "Manteiga", quantityWithUnitOfMeasurement: "10g")],instruction: "Unte a fora", timer: 0),
                                                      Instruction(ingredients: [Ingredient(name: "Massa", quantityWithUnitOfMeasurement: "")],instruction: "Coloque na forma", timer: 0),
                                                      Instruction(ingredients: [Ingredient(name: "Forno", quantityWithUnitOfMeasurement: "")],instruction: "Asse por", timer: 1800),],
                                       category: .bolos, time: "45 minutos"))
    }
}
