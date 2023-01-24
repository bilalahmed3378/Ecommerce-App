//
//  Login Screen.swift
//  Ecommerce App
//
//  Created by Bilal Ahmed on 24/01/2023.
//

import SwiftUI

struct Login_Screen: View {
    @State private var email = ""
    
    @State private var password = ""
    
    @State var showPassword = false

    var body: some View {
        ZStack{
            VStack{
                HStack{
                    VStack(alignment: .leading){
                        
                        Text("Login")
                            .font(AppFonts.ceraPro_24)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                            .padding(.top,20)
                        
                        Text("Let's create your account")
                            .font(AppFonts.ceraPro_16)
                            .foregroundColor(AppColors.TextColor)
                            .padding(.top,5)
                            .padding(.bottom,15)
                    }
                    Spacer()
                }
               
                
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
                    
                    //password
                    HStack{
                        Text("Password")
                            .font(AppFonts.ceraPro_16)
                            .foregroundColor(.black)
                            
                        
                        Spacer()
                    }
                    .padding(.top,5)

                    if(self.showPassword){
                        TextField("Enter your password", text: self.$password)
                            .font(AppFonts.ceraPro_14)
                            .foregroundColor(.black)
                            .padding()
                            .background(AppColors.TextFieldColor)
                            .cornerRadius(10)
                            .overlay(HStack{
                                Spacer()
                                Button(action: {
                                  
                                        self.showPassword.toggle()
                                    
                                }){
                                    Image(systemName: "eye.fill")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 20, height: 20)
                                        .foregroundColor(AppColors.TextColor)
                                        
                                }
                                .padding(.trailing,10)
                            })
                            .cornerRadius(10)
                            .padding(.top,10)
                            .onChange(of: self.password) { newValue in
                                self.password = newValue.limit(limit : 15)
                            }
                    }
                    else{
                        SecureField("Enter your password", text: self.$password)
                            .font(AppFonts.ceraPro_14)
                            .foregroundColor(.black)
                            .padding()
                            .background(AppColors.TextFieldColor)
                            .cornerRadius(10)
                            .overlay(HStack{
                                Spacer()
                                Button(action: {
                                  
                                        self.showPassword.toggle()
                                    
                                }){
                                    Image(systemName: "eye.fill")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 20, height: 20)
                                        .foregroundColor(AppColors.TextColor)
                                        
                                }
                                .padding(.trailing,10)
                            })
                            .cornerRadius(10)
                            .padding(.top,10)
                            .onChange(of: self.password) { newValue in
                                self.password = newValue.limit(limit : 15)
                            }
                    }
                   
                    
                    HStack{
                        Spacer()
                        NavigationLink(destination:  ForgetPasswordScreen()){
                            Text("Forgot your password?")
                                .font(AppFonts.ceraPro_14)
                                .foregroundColor(.black)
                        }
                       
                    }
                    .padding(.top,10)
                    
                }
                
                //button
                
                BlackButton(lable: "Login")
                    .padding(.top,20)
                
                Group{
                    
                    HStack{
                        
                        
                        Text("Or")
                            .font(AppFonts.ceraPro_16)
                            .foregroundColor(AppColors.TextColor)
                        
                        
                        
                    }
                    .padding(.top,10)
                    .padding(.bottom,10)
                    
                    HStack{
                        Spacer()
                        
                        Image(AppImages.googleIcon)
                        
                        Text("Login with Google")
                            .foregroundColor(.black)
                            .font(AppFonts.ceraPro_14)
                        
                        
                        Spacer()
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).strokeBorder(lineWidth: 2))
                    .shadow(radius: 10)
                    .padding(.bottom,20)
                    
                    HStack{
                        Spacer()
                        
                        Image(AppImages.facebookIcon)
                        
                        Text("Login with Facebook")
                            .foregroundColor(.black)
                            .font(AppFonts.ceraPro_14)
                        
                        
                        Spacer()
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).strokeBorder(lineWidth: 2))
                    .shadow(radius: 10)
                    
                }
                
                HStack{
                    Spacer()
                    NavigationLink(destination: {
                        SignupScreen()
                    }, label: {
                        Text("Not Register yet? Sign Up")
                            .foregroundColor(Color.black)
                            .font(AppFonts.ceraPro_14)
                    })
                   
                    Spacer()
                }
                .padding(.top,10)
                
                
                
                Spacer()
                
            }
            .padding(.leading,20)
            .padding(.trailing,20)
        }
        .navigationBarHidden(true)
    }
}


