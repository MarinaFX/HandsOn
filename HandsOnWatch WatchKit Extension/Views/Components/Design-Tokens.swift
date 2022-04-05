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
    enum Colors: CaseIterable {
        
        enum Brand {
            
            static var primaryColor: Color {
                return Color(red: 0.471, green: 0.478, blue: 1)
            }
        }
        
        enum Support: CaseIterable {
            
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
        
        enum Neutral: CaseIterable {
            
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
    
    enum BorderRadius: CaseIterable {
        
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
    
    enum Icons: CaseIterable {
        
        static var minusFill: Image = {
            Image(systemName: "minus.circle.fill")
                .frame(width: 24, height: 24)
        }() as! Image
        
        static var plusFill: Image = {
            Image(systemName: "plus.circle.fill")
                .frame(width: 24, height: 24)
        }() as! Image
        
        static var xmarkFill: Image = {
            Image(systemName: "xmark.circle.fill")
                .frame(width: 32, height: 32)
        }() as! Image
        
        static var pauseFill: Image = {
            Image(systemName: "pause.circle.fill")
                .frame(width: 32, height: 32)
                
        }() as! Image
        
        static var ellipsisFill: Image = {
            Image(systemName: "ellipsi.circle.fill")
                .frame(width: 18, height: 18)
        }() as! Image
    }
    
    //MARK: - Opacity
}
