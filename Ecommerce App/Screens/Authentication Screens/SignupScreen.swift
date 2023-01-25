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
    @State var showPassword = false
    
    @Binding var pushToSignup : Bool
    
    init (pushToSignup : Binding<Bool>){
        self._pushToSignup = pushToSignup
        
    }

    var body: some View {
        ZStack{
            VStack{
                HStack{
                    VStack(alignment: .leading){
                        Text("Create an account")
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
                                    Image(systemName: "eye.slash.fill")
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
                   
                    
                }
                
                //button
                
                BlackButton(lable: "Signup")
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
                        
                        Text("Signup with Google")
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
                        
                        Text("Signup with Facebook")
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
                    Button(action: {
                        self.pushToSignup = false
                    }, label: {
                        Text("Already a member? Log In")
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


