//
//  ForgetPasswordScreen.swift
//  Ecommerce App
//
//  Created by Bilal Ahmed on 24/01/2023.
//

import SwiftUI

struct ForgetPasswordScreen: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var email = ""

    var body: some View {
        
        ZStack{
            VStack{
               
                
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
                    
                    VStack(alignment: .center){
                        Text("Forget Password?")
                            .font(AppFonts.ceraPro_24)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                        
                        Text("Enter your Registered Email")
                            .font(AppFonts.ceraPro_16)
                            .foregroundColor(AppColors.TextColor)
                            .padding(.top,5)
                            .padding(.bottom,15)
                        
                    }
                    .offset(x: -5)
                    
                    Spacer()
                    
                }
                .padding(.top,20)
                
                //textfields
                Group{
                   
                   
                    
                    //Email
                    
                    HStack{
                        Text("Email")
                            .font(AppFonts.ceraPro_16)
                            .foregroundColor(.black)
                            
                        
                        Spacer()
                    }
                    .padding(.top,5)
                    
                    TextField("Enter your email address", text: self.$email)
                        .font(AppFonts.ceraPro_14)
                        .foregroundColor(.black)
                        .padding()
                        .background(AppColors.TextFieldColor)
                        .cornerRadius(10)
                        .onChange(of: self.email) { newValue in
                            self.email = newValue.limit(limit : 40)
                        }
                    
                   
                }
                
                //button
                NavigationLink(destination: VerifyOTPScreen()){
                    BlackButton(lable: "Next")
                        .padding(.top,20)
                    
                }
               
                
                Spacer()
                
            }
            .padding(.leading,20)
            .padding(.trailing,20)
        }
        .navigationBarHidden(true)
    }
}

