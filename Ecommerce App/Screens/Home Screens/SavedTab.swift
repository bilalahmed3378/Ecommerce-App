//
//  Saved Tab.swift
//  Ecommerce App
//
//  Created by Bilal Ahmed on 27/01/2023.
//

import SwiftUI

struct SavedTab: View {
    @Binding var selectedTab : Int
    var body: some View {
        ZStack{
            VStack{
                // Top Bar
                HStack{
                    Text("Saved")
                        .font(AppFonts.ceraPro_24)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                    
                    Spacer()
                    
                    Image(AppImages.belliconBlack)
                        .resizable()
                        .aspectRatio( contentMode: .fit)
                        .frame(width: 24,height: 24)
                    
                }
                .padding(.top,20)
                
                

                ScrollView(.vertical,showsIndicators: false){
                    
                    LazyVGrid(columns: [GridItem(.flexible()),GridItem(.flexible())]){
                        
                        ForEach(0...10, id : \.self){index in
                            
                            VStack{
                                
                                ItemCard(selectedTab: self.$selectedTab)
                                    
                                Spacer()
                               
                            }
                            
                            
                        }
                        

                    }
                    

                }
                .padding(.top,10)
                .padding(.bottom,70)
                .clipped()
                

                
            }
            .padding(.leading,20)
            .padding(.trailing,20)
        }
    }
}

