//
//  Fonts.swift
//  VideoTracker
//
//  Created by Татьяна Севостьянова on 17.07.2020.
//  Copyright © 2020 Татьяна Севостьянова. All rights reserved.
//

import UIKit


extension UIFont {
    static func loggedTitleFont(size: CGFloat, weight: UIFont.Weight) -> UIFont {
        let fontName: String!
        
        switch weight {
        case .regular:
            fontName = "Questrial-Regular"
        default:
            fontName = "Questrial-Regular"
        }
        
        return UIFont(name: fontName, size: size) ?? UIFont.systemFont(ofSize: size)
    }
    
    static func mainTitleAndPriceFont(size: CGFloat, weight: UIFont.Weight) -> UIFont {
        let fontName: String!
        
        switch weight {
        case .regular:
            fontName = "Comfortaa-Regular"
        default:
            fontName = "Comfortaa-Regular"
        }
        
        return UIFont(name: fontName, size: size) ?? UIFont.systemFont(ofSize: size)
    }
    
    static func serviceButtonsFont(size: CGFloat, weight: UIFont.Weight) -> UIFont {
        let fontName: String!
        
        switch weight {
        case .regular:
            fontName = "Roboto-Regular"

        default:
            fontName = "Roboto-Regular"
        }
        
        return UIFont(name: fontName, size: size) ?? UIFont.systemFont(ofSize: size)
    }
    
    static func catalogButtonsFont(size: CGFloat, weight: UIFont.Weight) -> UIFont {
        let fontName: String!
        
        switch weight {
        case .regular:
            fontName = "ofont.ru_Corbel"

        default:
            fontName = "ofont.ru_Corbel"
        }
        
        return UIFont(name: fontName, size: size) ?? UIFont.systemFont(ofSize: size)
    }
}
