//
//  FinishedTimerView.swift
//  HandsOnWatch WatchKit Extension
//
//  Created by Lucas Dimer Justo on 06/04/22.
//

import SwiftUI

struct FinishedTimerView: View {
    var body: some View {
        VStack(spacing: 8) {
            Image("IconOrange")
                .resizable()
                .frame(width: 111.93, height: 111.93)
            Text("Acabou o tempo!")
                .font(DesignTokens.Fonts.totalTime)
            Text("HANDS ON")
                .foregroundColor(DesignTokens.Colors.Brand.primaryColor)
        }
    }
}

struct FinishedTimerView_Previews: PreviewProvider {
    static var previews: some View {
        FinishedTimerView()
    }
}
