//
//  Ingredient.swift
//  HandsOnWatch WatchKit Extension
//
//  Created by Lucas Dimer Justo on 06/04/22.
//

import Foundation

class Ingredient: Identifiable {
    let name: String
    let quantityWithUnitOfMeasurement: String//string must show unit of measurement
    
    init(name: String, quantityWithUnitOfMeasurement: String) {
        self.name = name
        self.quantityWithUnitOfMeasurement = quantityWithUnitOfMeasurement
    }
}
