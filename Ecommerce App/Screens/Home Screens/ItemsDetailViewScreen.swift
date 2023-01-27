//
//  ItemsDetailViewScreen.swift
//  Ecommerce App
//
//  Created by Bilal Ahmed on 27/01/2023.
//

import SwiftUI

struct ItemsDetailViewScreen: View {
    @Environment(\.presentationMode) var presentationMode
    @State var isSelected : Bool = false
    @State var selectedSize : String = ""
    @Binding var selectedTab : Int
    
    init(selectedTab : Binding<Int>) {
        
        self._selectedTab = selectedTab
    }
    var body: some View {
        
        ZStack{
            VStack{
                VStack{
                    // Top bar
                    HStack(alignment: .top){
                        
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }, label: {
                            Image(AppImages.backIconBlack)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 24, height: 24)
                        })
                        
                        Spacer()
                        
                        
                        Text("Details")
                            .font(AppFonts.ceraPro_24)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                        
                        Spacer()
                        
                       
                        Button(action: {
                            self.selectedTab = 2
                        }, label: {
                            Image(AppImages.belliconBlack)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 24, height: 24)
                        
                        })
                         
                    }
                    .padding(.top,15)
                    
                    ScrollView(.vertical, showsIndicators: false){
                        
                        VStack{
                            ZStack(alignment: .top){
                                // user image
                                Image(uiImage: UIImage(named: AppImages.itemCardPic)!)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame( height: 300)
                                    .cornerRadius(8)
                                    .padding(.top,20)
                                
                                VStack{
                                    HStack{
                                        
                                        Spacer()
                                        
                                        Image(uiImage: UIImage(named: AppImages.heartIconBlack)!)
                                            .resizable()
                                            .aspectRatio( contentMode: .fit)
                                            .frame(width: 20, height: 20)
                                            .padding(5)
                                            .background(RoundedRectangle(cornerRadius: 8).fill(Color.white))
                                        
                                    }
                                    .padding(.top,30)
                                    .padding(.leading,10)
                                    .padding(.trailing,10)
                                    
                                    Spacer()
                                    
                                    
                                }
                                
                                Spacer()
                                
                            }
                            
                            
                            // item name
                            HStack{
                                
                                Text("Regular T-Shirt")
                                    .font(AppFonts.ceraPro_24)
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                                
                                Spacer()
                            }
                            .padding(.top,10)
                            
                            // rating
                            HStack{
                                
                                Image(AppImages.belliconBlack)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 16, height: 16)
                                    .padding(.trailing,5)
                                
                                Text("4.5/5")
                                    .font(AppFonts.ceraPro_16)
                                    .foregroundColor(.black)
                                
                                Text("(45 reviews)")
                                    .font(AppFonts.ceraPro_16)
                                    .foregroundColor(AppColors.TextColor)
                                
                                
                                Spacer()
                            }
                            .padding(.top,10)
                            
                            //Description
                            HStack{
                                
                                Text("THE NAME SAYS IT ALL, THE RIGHT SIZE SLIGHTLY SNUGS THE BODY LEAVING ENOUGH ROOM FOR COMFORT IN THE SLEEVES AND WAIST.")
                                    .font(AppFonts.ceraPro_16)
                                    .foregroundColor(AppColors.TextColor)
                                
                                
                                Spacer()
                            }
                            .padding(.top,10)
                            
                            //  Size
                            HStack{
                                
                                Text("Choose Size")
                                    .font(AppFonts.ceraPro_20)
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                                
                                Spacer()
                            }
                            .padding(.top,10)
                            
                            HStack{
                                
                                Text("S")
                                    .font(AppFonts.ceraPro_20)
                                    .fontWeight(.bold)
                                    .foregroundColor(self.selectedSize == "s" ? .white : .black)
                                    .padding(.leading,20)
                                    .padding(.trailing,20)
                                    .padding(.top,15)
                                    .padding(.bottom,15)
                                    .background(RoundedRectangle(cornerRadius: 10).strokeBorder(lineWidth: 1).foregroundColor(AppColors.TextColor)
                                        .background(RoundedRectangle(cornerRadius: 10).fill(selectedSize == "s" ? .black : .white)))
                                    .padding(.trailing,5)
                                    .onTapGesture {
                                        withAnimation{
                                            self.selectedSize = "s"
                                        }
                                    }
                                
                                Text("M")
                                    .font(AppFonts.ceraPro_20)
                                    .fontWeight(.bold)
                                    .foregroundColor(self.selectedSize == "m" ? .white : .black)
                                    .padding(.leading,20)
                                    .padding(.trailing,20)
                                    .padding(.top,15)
                                    .padding(.bottom,15)
                                    .background(RoundedRectangle(cornerRadius: 10).strokeBorder(lineWidth: 1).foregroundColor(AppColors.TextColor)
                                        .background(RoundedRectangle(cornerRadius: 10).fill(selectedSize == "m" ? .black : .white)))
                                    .padding(.trailing,5)
                                    .onTapGesture {
                                        withAnimation{
                                            self.selectedSize = "m"
                                        }
                                    }
                                
                                Text("L")
                                    .font(AppFonts.ceraPro_20)
                                    .fontWeight(.bold)
                                    .foregroundColor(self.selectedSize == "l" ? .white : .black)
                                    .padding(.leading,20)
                                    .padding(.trailing,20)
                                    .padding(.top,15)
                                    .padding(.bottom,15)
                                    .background(RoundedRectangle(cornerRadius: 10).strokeBorder(lineWidth: 1).foregroundColor(AppColors.TextColor)
                                        .background(RoundedRectangle(cornerRadius: 10).fill(selectedSize == "l" ? .black : .white)))
                                    .padding(.trailing,5)
                                    .onTapGesture {
                                        withAnimation{
                                            self.selectedSize = "l"
                                        }
                                    }
                                
                                Spacer()
                            }
                            .padding(.top,5)
                            
                        }
                    }
                    
                   
                    
                }
                .padding(.leading,20)
                .padding(.trailing,20)
                
                Divider()
                    .padding(.top,10)
                    .padding(.bottom,10)
                    .foregroundColor(AppColors.TextColor)
                
                // Bottom bar
                HStack{
                    VStack(alignment: .leading){
                        Text("Price")
                            .font(AppFonts.ceraPro_14)
                            .foregroundColor(AppColors.TextColor)
                            .padding(.bottom,1)
                        
                        Text("PKR 1990")
                            .font(AppFonts.ceraPro_20)
                            .foregroundColor(.black)
                            .fontWeight(.bold)
                        
                    }
                    .padding(.trailing,10)
                    
                   
                    BlackButton(lable: "Add to Cart")

                  
                    
                    
                }
                .padding(.leading,20)
                .padding(.trailing,20)
                
            }
        }
        .navigationBarHidden(true)
        
    }
}


