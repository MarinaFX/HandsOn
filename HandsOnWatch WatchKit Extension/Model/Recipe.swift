//
//  Recipe.swift
//  HandsOnWatch WatchKit Extension
//
//  Created by Lucas Dimer Justo on 06/04/22.
//

import Foundation

enum Category: CustomStringConvertible {
    case risotto
    
    var description: String {
        switch self {
            case .risotto:
                return "Risotto"
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
