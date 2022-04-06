//
//  Design-Tokens.swift
//  HandsOnWatch WatchKit Extension
//
//  Created by Marina De Pazzi on 05/04/22.
//

import Foundation
import UIKit
import SwiftUI

//MARK: - Hands On Design System
enum DesignTokens {
    
    //MARK: - Colors
    enum Colors: CaseIterable {
        
        enum Brand {
            
            static var primaryColor: Color {
                return Color(red: 1, green: 0.36, blue: 0)
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
    
    enum Fonts {
        
        static var measures: Font = {
            return Font(Font.system(size: 40).weight(.semibold) as! CTFont)
        }()
        
        /**
            Used for description-text token
         
            primary-description-text uses **support** colors
         
            secondary-description-text uses **neutral** colors
         */
        static var description: Font = {
            return Font(Font.system(size: 15).weight(.regular) as! CTFont).uppercaseSmallCaps()
        }()
        
        static var totalTime: Font = {
            return Font(CTFontCreateUIFontForLanguage(.system, 14, nil)!).weight(.regular).uppercaseSmallCaps()
        }()
    }
    
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
                .font(Font.system(size: 24).weight(.light))
        }() as! Image
        
        static var plusFill: Image = {
            Image(systemName: "plus.circle.fill")
                .font(Font.system(size: 24).weight(.light))
        }() as! Image
        
        static var xmarkFill: Image = {
            Image(systemName: "xmark.circle.fill")
                .font(Font.system(size: 32).weight(.light))
        }() as! Image
        
        static var pauseFill: Image = {
            Image(systemName: "pause.circle.fill")
                .font(Font.system(size: 32).weight(.light))
        }() as! Image
        
        static var ellipsisFill: Image = {
            Image(systemName: "ellipsi.circle.fill")
                .font(Font.system(size: 18).weight(.light))
        }() as! Image
    }
    
    //MARK: - Opacity
}
