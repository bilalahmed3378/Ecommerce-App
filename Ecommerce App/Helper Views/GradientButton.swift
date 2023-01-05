//
//  GradientButton.swift
//  MeccaFitness
//
//  Created by CodeCue on 13/02/2022.
//

import SwiftUI

struct GradientButton: View {
    
    let lable : String
    
    var body: some View {
        
        HStack{
            Spacer()
            Text(lable)
                .foregroundColor(.white)
                .font(AppFonts.ceraPro_14)
            Spacer()
        }
        .padding()
        .background(Color.black)
        .cornerRadius(10)
        .shadow(radius: 10)
    }
}

