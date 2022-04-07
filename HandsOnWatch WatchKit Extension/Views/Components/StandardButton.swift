//
//  StandardButton.swift
//  HandsOnWatch WatchKit Extension
//
//  Created by Marcelo Diefenbach on 06/04/22.
//

import SwiftUI

struct StandardButton: View {
    var type: String?
    var textButton: String?
    
    var body: some View {
        if(type == "primary"){
            
            Button(textButton ?? "") {
                // Do something here
            }.foregroundColor(DesignTokens.Colors.Neutral.highPure)
            .background(DesignTokens.Colors.Brand.primaryColor)
            .cornerRadius(500)
            .font(Font.system(size: 16).bold())
            
        } else {
            
            Button(textButton ?? "") {
                // Do something here
            }.foregroundColor(DesignTokens.Colors.Neutral.highPure)
                .background(DesignTokens.Colors.Neutral.lowDark)
            .cornerRadius(500)
            .font(Font.system(size: 16).bold())
            
        }
    }
}

struct StandardButton_Previews: PreviewProvider {
    static var previews: some View {
        StandardButton(type: "primary", textButton: "Anterior")

    }
}
