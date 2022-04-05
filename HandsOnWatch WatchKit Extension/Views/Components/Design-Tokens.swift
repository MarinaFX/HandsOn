//
//  Design-Tokens.swift
//  HandsOnWatch WatchKit Extension
//
//  Created by Marina De Pazzi on 05/04/22.
//

import Foundation
import SwiftUI

//MARK: - Hands On Design System
enum DesignTokens {
    
    //MARK: - Colors
    enum Colors {
        
        enum Brand {
            
            static var primaryColor: Color {
                return Color(red: 0.471, green: 0.478, blue: 1)
            }
        }
        
        enum Support {
            
            static var primaryColor: Color {
                return Color(red: 0.98, green: 0.067, blue: 0.31)
            }
            
            static var secondaryColor: Color {
                return Color(red: 0.016, green: 0.871, blue: 0.443)
            }
            
            static var tertiaryColor: Color {
                return Color(red: 1, green: 0.584, blue: 0)
            }
            
            static var quaternaryColor: Color {
                return Color(red: 0.353, green: 0.784, blue: 0.98)
            }
        }
        
        enum Neutral {
            
            static var lowPure: Color {
                return Color(red: 0, green: 0, blue: 0)
            }
            
            static var lowDark: Color {
                return Color(red: 0.3, green: 0.3, blue: 0.3)
            }
            
            static var lowLight: Color {
                return Color(red: 0.608, green: 0.608, blue: 0.608)
            }
            
            static var highPure: Color {
                return Color(red: 1, green: 1, blue: 1)
            }
            
            static var highDark: Color {
                return Color(red: 0.75, green: 0.75, blue: 0.75)
            }
            
            static var highLight: Color {
                return Color(red: 0.871, green: 0.871, blue: 0.871)
            }
        }
    }
    
    //MARK: - ComponentDimensions
    
    enum ComponentDimensions {
        enum Card {
            static var cardHeight: CGFloat = {
                return WKInterfaceDevice.current().screenBounds.size.height * 0.36
            }()
        }
    }
    
    //MARK: - Fonts
    
    //MARK: - Border Radius
    
    enum BorderRadius {
        
        static var none: CGFloat = {
            return 0
        }()
        
        static var sm: CGFloat = {
            return 8
        }()
        
        static var pill: CGFloat = {
            return 34.44
        }()
        
        static var circular: CGFloat = {
           return 100
        }()
    }
    
    //MARK: - Icons
    
    //MARK: - Opacity
}
