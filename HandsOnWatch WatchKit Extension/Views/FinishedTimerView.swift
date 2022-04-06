//
//  FinishedTimerView.swift
//  HandsOnWatch WatchKit Extension
//
//  Created by Lucas Dimer Justo on 06/04/22.
//

import SwiftUI

struct FinishedTimerView: View {
    var body: some View {
        VStack {
            Image("IconOrange")
            Text("Acabou o tempo!")
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
