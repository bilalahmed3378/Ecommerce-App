//
//  CartScreen.swift
//  Ecommerce App
//
//  Created by Bilal Ahmed on 27/01/2023.
//

import SwiftUI

struct CartScreen: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var voucherTest : String = ""
    var body: some View {
        ZStack{
            VStack{
                VStack{
                    // Top bar
                    HStack(alignment: .top){
                        
                        Text("My Cart")
                            .font(AppFonts.ceraPro_24)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                        
                        Spacer()
                        
                        Image(AppImages.belliconBlack)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 24, height: 24)
                        
                    }
                    .padding(.top,15)
                    
                    
                    ScrollView(.vertical, showsIndicators: false){
                        
                        LazyVStack{
                            ForEach(0...5, id: \.self){index in
                                HStack{
                                    Image(uiImage: UIImage(named: AppImages.itemCardPic)!)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 100 , height: 100 )
                                        .cornerRadius(8)
                                    
                                    VStack(alignment: .leading){
                                        
                                        HStack{
                                            
                                            Text("Regulat fit slogan")
                                                .foregroundColor(.black)
                                                .fontWeight(.medium)
                                                .font(AppFonts.ceraPro_16)
                                            
                                            Spacer()
                                            
                                            Image(systemName: "xmark.bin")
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(width: 20, height: 20)
                                                .foregroundColor(.red)

                                        }
                                        
                                        HStack{
                                            Text("Size L")
                                                .foregroundColor(AppColors.TextColor)
                                                .font(AppFonts.ceraPro_14)
                                                
                                        }
                                        
                                        Spacer()
                                        
                                        HStack{
                                            Text("PKR 1290")
                                                .foregroundColor(.black)
                                                .fontWeight(.bold)
                                                .font(AppFonts.ceraPro_16)
                                            
                                            Spacer()
                                            
                                            
                                            Image(systemName: "minus.square.fill")
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(width: 20, height: 20)
                                                .foregroundColor(.black)
                                            
                                            Text("2")
                                                .foregroundColor(.black)
                                                .font(AppFonts.ceraPro_12)
                                            
                                            Image(systemName: "plus.app.fill")
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(width: 20, height: 20)
                                                .foregroundColor(.black)
                                            
                                            
                                        }
                                        
                                    }
                                    
                                }
                                .padding(10)
                                .background(RoundedRectangle(cornerRadius: 10).fill(AppColors.TextFieldColor))
                                .frame( height: 120)
                                .padding(.top,10)

                            }
                        }
                        .padding(.top,10)
                        
                     
                    }
                    
                    VStack{
                        
                        // voucher bar
                        HStack{
                            
                            HStack{
                               
                                TextField("Add a voucher" , text: self.$voucherTest)
                                    .autocapitalization(.none)
                                    .font(AppFonts.ceraPro_14)
                                    .foregroundColor(AppColors.TextColor)
                                   
                            }
                            .padding(10)
                            .background(RoundedRectangle(cornerRadius: 10).fill(AppColors.TextFieldColor))
                         
                        }
                        
                        HStack{
                            Text("Sub-total")
                                .foregroundColor(AppColors.TextColor)
                                .font(AppFonts.ceraPro_16)
                            
                            Spacer()
                            
                            Text("PKR 5,660")
                                .foregroundColor(.black)
                                .font(AppFonts.ceraPro_16)
                            
                        }
                        .padding(.bottom,3)
                        .padding(.top,5)
                        
                        HStack{
                            Text("VAT(%)")
                                .foregroundColor(AppColors.TextColor)
                                .font(AppFonts.ceraPro_16)
                            
                            Spacer()
                            
                            Text("PKR 00")
                                .foregroundColor(.black)
                                .font(AppFonts.ceraPro_16)
                            
                        }
                        .padding(.bottom,3)
                        
                        
                        HStack{
                            Text("Shipping fee")
                                .foregroundColor(AppColors.TextColor)
                                .font(AppFonts.ceraPro_16)
                            
                            Spacer()
                            
                            Text("PKR 900")
                                .foregroundColor(.black)
                                .font(AppFonts.ceraPro_16)
                            
                        }
                        .padding(.bottom,3)
                        
                        Divider()
                            .padding(.top,5)
                            .padding(.bottom,5)
                        
                        HStack{
                            Text("Total")
                                .foregroundColor(AppColors.TextColor)
                                .font(AppFonts.ceraPro_16)
                            
                            Spacer()
                            
                            Text("PKR 7000")
                                .foregroundColor(.black)
                                .font(AppFonts.ceraPro_16)
                            
                        }
                        
                        Divider()
                            .padding(.top,5)
                            .padding(.bottom,5)
                        
                        
                        // Bottom bar
                        HStack{
                            BlackButton(lable: "Checkout")
                        }
                    }
                  
                }
                .padding(.leading,20)
                .padding(.trailing,20)
                .padding(.bottom,100)
                
                
                
              
             
                
               
                
            }
        }
        .navigationBarHidden(true)
        
    }
}


