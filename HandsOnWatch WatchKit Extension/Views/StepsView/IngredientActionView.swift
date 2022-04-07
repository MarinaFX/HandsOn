//
//  IngredientView.swift
//  HandsOnWatch WatchKit Extension
//
//  Created by Marcelo Diefenbach on 06/04/22.
//

import SwiftUI

struct IngredientActionView: View {
    var name: String?
    var quantityWithUnitOfMeasurement: String?
    var descriptionOfUnit: String?
    var recipe: Recipe?
    
    var body: some View {
        ScrollView{
            VStack (spacing: 8){
                Text(quantityWithUnitOfMeasurement ?? "").font(DesignTokens.Fonts.semibold40)
                Text(name ?? "").font(Font.system(size: 15)).fontWeight(.semibold).foregroundColor(DesignTokens.Colors.Brand.primaryColor)
                Text(descriptionOfUnit ?? "").font(Font.system(size: 15)).fontWeight(.semibold).foregroundColor(DesignTokens.Colors.Neutral.highPure)
                    .multilineTextAlignment(.center)
                    .frame(width: WKInterfaceDevice.current().screenBounds.size.width * 0.9, alignment: .center)
                    .padding(.bottom, 16)
                StandardButton(type: "primary", textButton: "Próximo")
                StandardButton(type: "secondary", textButton: "Voltar")
            }
        }
    }
}

struct IngredientView_Previews: PreviewProvider {
    static var previews: some View {
        IngredientActionView(name: "SAL", quantityWithUnitOfMeasurement: "4g", descriptionOfUnit: "1 COLHER DE SOBREMESA")
    }
}
