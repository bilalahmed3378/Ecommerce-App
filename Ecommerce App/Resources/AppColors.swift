//
//  AppColors.swift
//  MeccaFitness
//
//  Created by CodeCue on 13/02/2022.
//

import Foundation
import SwiftUI

struct AppColors {
    
    static let TextColor = Color("TextColor")
    static let TextFieldColor = Color("TextFieldColor")
  
    
    
    
    static var excellent: Color {
            return Color(red: 0.176, green: 0.521, blue:0.192 )
        }
    
    static var good: Color {
            return Color(red: 0.494, green: 0.737, blue: 0.219)
        }
    
    
  
    
    
    static var commentBackground: Color {
            return Color(
                red: 0.3,
                green: 0.3,
                blue: 0.8
            )
        }
    
    static var random: Color {
            return Color(
                red: .random(in: 0...1),
                green: .random(in: 0...1),
                blue: .random(in: 0...1)
            )
        }
    
}
