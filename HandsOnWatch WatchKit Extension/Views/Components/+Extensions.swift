//
//  ViewComponents+Extensions.swift
//  HandsOnWatch WatchKit Extension
//
//  Created by Marina De Pazzi on 07/04/22.
//

import Foundation
import SwiftUI

//MARK: - Button Extensions
struct CorneredButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .cornerRadius(DesignTokens.BorderRadius.sm)
    }
}
