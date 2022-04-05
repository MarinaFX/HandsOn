//
//  ContentView.swift
//  HandsOnWatch WatchKit Extension
//
//  Created by Marina De Pazzi on 04/04/22.
//

import SwiftUI
import WatchKit

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 10) {
                    VStack {
                        Rectangle()
                            .fill(DesignTokens.Colors.Brand.primaryColor)
                            .cornerRadius(8)
                            .frame(height: DesignTokens.Card.cardHeight)
                            .padding(.horizontal, 5)
                        
                        Rectangle()
                            .fill(DesignTokens.Colors.Support.primaryColor)
                            .cornerRadius(8)
                            .frame(height: DesignTokens.Card.cardHeight)
                            .padding(.horizontal, 5)
                        
                        Rectangle()
                            .fill(DesignTokens.Colors.Support.secondaryColor)
                            .cornerRadius(8)
                            .frame(height: DesignTokens.Card.cardHeight)
                            .padding(.horizontal, 5)
                    }
                }
            }
            .background(.gray)
        }
        .navigationTitle("Flemis")
        .navigationBarTitleDisplayMode(.inline)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
