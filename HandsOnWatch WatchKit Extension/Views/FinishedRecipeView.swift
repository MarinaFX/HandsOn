//
//  FinishedRecipeView.swift
//  HandsOnWatch WatchKit Extension
//
//  Created by Lucas Dimer Justo on 07/04/22.
//

import SwiftUI

struct FinishedRecipeView: View {
    var body: some View {
        VStack(spacing: 8) {
            Image("CheckmarkOrange")
                .resizable()
                .frame(width: 100, height: 100)
            Text("Receita Concluída!")
                .font(DesignTokens.Fonts.light16)
            Text("HANDS ON")
                .foregroundColor(DesignTokens.Colors.Brand.primaryColor)
        }
    }
}

struct FinishedRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        FinishedRecipeView()
    }
}
