//
//  Instruction.swift
//  HandsOnWatch WatchKit Extension
//
//  Created by Lucas Dimer Justo on 06/04/22.
//

import Foundation

struct Instruction {
    var ingredients: [Ingredient]//may have more than ingredient; example: "mix eggs and flour."
    let instruction: String//cook, mix, fry... for x amount of time
    let timer: TimeInterval//in seconds
}
