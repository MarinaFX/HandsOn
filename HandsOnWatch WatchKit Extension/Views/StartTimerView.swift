//
//  StartTimerView.swift
//  HandsOnWatch WatchKit Extension
//
//  Created by João Brentano on 07/04/22.
//

import SwiftUI

struct StartTimerView: View {
    var body: some View {
        VStack(spacing: 8) {
            Spacer()
            Text("20 min")
                .font(DesignTokens.Fonts.measures)
            Text("LEVE AO FORNO")
                .foregroundColor(DesignTokens.Colors.Brand.primaryColor)
            Spacer()
            StandardButton(type: "primary", textButton: "Iniciar timer")
        }
    }
}

struct StartTimerView_Previews: PreviewProvider {
    static var previews: some View {
        StartTimerView()
    }
}
