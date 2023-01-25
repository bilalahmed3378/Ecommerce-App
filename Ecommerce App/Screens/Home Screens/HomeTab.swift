//
//  HomeTab.swift
//  Ecommerce App
//
//  Created by Bilal Ahmed on 25/01/2023.
//

import SwiftUI

struct HomeTab: View {
    @State private var searchText = ""
    var body: some View {
        ZStack{
            VStack{
                // Top Bar
                HStack{
                    Text("Home")
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

                
                HStack{
                    
                    // Search bar
                    HStack{
                        Image(uiImage: UIImage(named: AppImages.belliconBlack)!)
                            .resizable()
                            .aspectRatio( contentMode: .fit)
                            .frame(width: 24, height: 24)

                        TextField("Search Mecca of Fitness" , text: self.$searchText)
                            .autocapitalization(.none)
                            .font(AppFonts.ceraPro_14)
                            .foregroundColor(AppColors.TextColor)
                           

                        Button(action: {
                            self.searchText = ""
                        }){
                            Image(uiImage: UIImage(named: AppImages.belliconBlack)!)
                                .resizable()
                                .aspectRatio( contentMode: .fit)
                                .frame(width: 24, height: 24)
                            
                            
                        }
                        
                    }
                    .padding(10)
                    .background(RoundedRectangle(cornerRadius: 10).fill(AppColors.TextFieldColor))
                 
                    
                   
                    
                    
                    Image(uiImage: UIImage(named: AppImages.filterIcon)!)
                        .resizable()
                        .aspectRatio( contentMode: .fit)
                        .frame(width: 24, height: 24)
                        .padding(10)
                        .background(RoundedRectangle(cornerRadius: 10).fill(.black))
                    
                    
                }
                .padding(.top,10)

                
            }
            .padding(.leading,20)
            .padding(.trailing,20)
        }
    }
}

