//
//  Recipe.swift
//  HandsOnWatch WatchKit Extension
//
//  Created by Lucas Dimer Justo on 06/04/22.
//

import Foundation

enum Category: CustomStringConvertible {
    case massas, bolos
    
    var description: String {
        switch self {
            case .bolos:
                return "Bolos"
            case .massas:
                return "Massas"
        }
    }
}

struct Recipe: Hashable {
    let title: String
    private let produceQuantity: Double
    let produceUnitOfMeasurement: String
    var ingredients: [Ingredient]
    var instructions: [Instruction]
    let category: Category
    let time: String//should be in minutes
    
    init(title: String, produceQuantity: Double, produceUnitOfMeasurement: String, ingredients: [Ingredient], instructions: [Instruction], category: Category, time: String) {
        self.title = title
        self.produceQuantity = produceQuantity
        self.produceUnitOfMeasurement = produceUnitOfMeasurement
        self.ingredients = ingredients
        self.instructions = instructions
        self.category = category
        self.time = time
    }
    
    static func == (lhs: Recipe, rhs: Recipe) -> Bool {
        return lhs.title == rhs.title
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(title)
    }
    
    func getProduceQuantityAsString() -> String {
        let produceQuantityString = String(format: "%.1f", self.produceQuantity)
        let numbers = produceQuantityString.split(separator: ".")
        if numbers[1] == "0" {
            return "\(numbers[0])"
        }
        return produceQuantityString
    }
    
    func getProduceQuantity() -> Double {
        return self.produceQuantity
    }
}

public class Recipes {
    let recipes: [Recipe] = buildRecipesArray()
    
    static func buildRecipesArray() -> [Recipe] {
        var recipe: [Recipe] = []
        
        recipe.append(
            Recipe(title: "Bolo de chocolate",
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
        
        recipe.append(
            Recipe(title: "Massa ao Molho Pesto",
                   produceQuantity: 2.0,
                   produceUnitOfMeasurement: "porções",
                   ingredients: [Ingredient(name: "Manjerição",quantityWithUnitOfMeasurement: "1/4 de xícara"),
                                 Ingredient(name: "Nozes picadas",quantityWithUnitOfMeasurement: "2 colheres de sopa"),
                                 Ingredient(name: "Alho",quantityWithUnitOfMeasurement: "2 dentes"),
                                 Ingredient(name: "Parmesão ralado",quantityWithUnitOfMeasurement: "1 colher de sopa"),
                                 Ingredient(name: " Provolone ralado",quantityWithUnitOfMeasurement: "1 colher de sopa"),
                                 Ingredient(name: " Azeite ",quantityWithUnitOfMeasurement: "1/2 xícara"),
                                 Ingredient(name: "Água ",quantityWithUnitOfMeasurement: "3 litros"),
                                 Ingredient(name: "Espaguete ",quantityWithUnitOfMeasurement: "300g")],
                   
                   instructions: [Instruction(ingredients: [Ingredient(name: "Amasse", quantityWithUnitOfMeasurement: "500g")],
                                              instruction: "Em um pilão, amasse bem as folhas de manjericão com as notes, os alhos e o sal. Vá amassando e acrescentando aos poucos os dois tipos de queijo.", timer: 0),
                                  Instruction(ingredients: [Ingredient(name: "Óleo", quantityWithUnitOfMeasurement: "Passe a mistura para uma vasilha")], instruction: "e acrescente aos poucos o óleo", timer: 0),
                                  Instruction(ingredients: [Ingredient(name: "Água", quantityWithUnitOfMeasurement: "Esquente até fervura e coloque o espaguete"),
                                                            Ingredient(name: "Espaguete", quantityWithUnitOfMeasurement: "cozinhe ")], instruction: "de acordo com instruções na embalagem", timer: 0),
                                  Instruction(ingredients: [Ingredient(name: "Misture", quantityWithUnitOfMeasurement: "espaguete e o molho")], instruction: "e sirva", timer: 300)],
                   category: .massas, time: "45 minutos"))
        
        return recipe
    }
}

