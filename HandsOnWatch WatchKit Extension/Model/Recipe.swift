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
    let produceQuantity: Double
    let produceUnitOfMeasurement: String
    var ingredients: [Ingredient]
    var instructions: [Instruction]
    let category: Category
    let time: String//should be in minutes
    
    static func == (lhs: Recipe, rhs: Recipe) -> Bool {
        return lhs.title == rhs.title
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(title)
    }
}
