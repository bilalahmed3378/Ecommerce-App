//
//  SignupScreen.swift
//  Ecommerce App
//
//  Created by Bilal Ahmed on 05/01/2023.
//

import SwiftUI

struct SignupScreen: View {
    
    @State private var firstName = ""
    @State private var email = ""
    @State private var password = ""


    
    var body: some View {
        ZStack{
            VStack{
                Text("Create an account")
                    .font(AppFonts.ceraPro_18)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .padding(.top,20)
                
                Text("Let's create your account")
                    .font(AppFonts.ceraPro_16)
                    .foregroundColor(AppColors.TextColor)
                    .padding(.top,5)
                    .padding(.bottom,15)
                
                //textfields
                Group{
                    // full name
                    HStack{
                        Text("Full Name")
                            .font(AppFonts.ceraPro_16)
                            .foregroundColor(.black)
                            
                        
                        Spacer()
                    }
                
                    
                    TextField("First Name", text: self.$firstName)
                        .font(AppFonts.ceraPro_14)
                        .foregroundColor(.black)
                        .padding()
                        .background(AppColors.TextFieldColor)
                        .cornerRadius(10)
                        .onChange(of: self.firstName) { newValue in
                            self.firstName = newValue.limit(limit : 30)
                        }
                    
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
                    
                    //password
                    HStack{
                        Text("Password")
                            .font(AppFonts.ceraPro_16)
                            .foregroundColor(.black)
                            
                        
                        Spacer()
                    }
                    .padding(.top,5)

                    
                    TextField("Enter your password", text: self.$password)
                        .font(AppFonts.ceraPro_14)
                        .foregroundColor(.black)
                        .padding()
                        .background(AppColors.TextFieldColor)
                        .cornerRadius(10)
                        .onChange(of: self.password) { newValue in
                            self.password = newValue.limit(limit : 15)
                        }
                    
                    
                }
                
                //button
                
                GradientButton(lable: "Signup")
                    .padding(.top,20)
                
                
                HStack{
                   
                    
                    Text("Or")
                        .font(AppFonts.ceraPro_16)
                        .foregroundColor(AppColors.TextColor)
                        
                 
                    
                }
                .padding(.top,10)
                .padding(.bottom,10)
                
                Spacer()
                
            }
            .padding(.leading,20)
            .padding(.trailing,20)
        }
    }
}


