//
//  RecipeCategoryList.swift
//  HandsOnWatch WatchKit Extension
//
//  Created by Marina De Pazzi on 06/04/22.
//

import Foundation
import SwiftUI

struct RecipeCategoryListView: View {
    @State var recipes: [Recipe] = [Recipe(title: "Bolo de chocolate",
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
                                           category: .bolos, time: "45 minutos")]
    
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
