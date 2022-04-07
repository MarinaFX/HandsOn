//
//  CardView.swift
//  HandsOnWatch WatchKit Extension
//
//  Created by Marina De Pazzi on 06/04/22.
//

import SwiftUI

struct CardView: View {
    var titleLabel: String
    var countLabel: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(DesignTokens.Colors.Support.primaryColor)
                .cornerRadius(DesignTokens.BorderRadius.sm)
                
            VStack(alignment: .leading) {
                Text(titleLabel)
                    .font(Font.title3)
                    .bold()
                    .padding(8)
                
                Spacer()
                
                HStack {
                    Text("\(countLabel) Receitas")
                        .font(Font.system(size: 12).weight(.light))
                    
                    Spacer()
                    
                    Image(systemName: "ellipsis.circle.fill")
                        .font(Font.system(size: 18, weight: .light))
                        .foregroundColor(DesignTokens.Colors.Neutral.highPure)
                }
                .padding(.bottom, 8)
                .padding(.leading, 8)
                .padding(.trailing, 10)
            }
        }
        .frame(height: DesignTokens.ComponentDimensions.Card.cardHeight)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(titleLabel: "Massa do TikTok", countLabel: "20 Receitas")
    }
}
