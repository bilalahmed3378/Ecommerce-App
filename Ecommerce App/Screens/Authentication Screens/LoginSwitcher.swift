//
//  LoginSwitcher.swift
//  Ecommerce App
//
//  Created by Bilal Ahmed on 25/01/2023.
//

import SwiftUI

struct LoginSwitcher: View {
    @State var isUserLoggedIn : Bool = false
    
    @State var isLoginView : Bool = false


    var body: some View {
        ZStack{
            if(self.isUserLoggedIn){
                MainTabContainer()
            }
            else{
                if(self.isLoginView){
                    SignupScreen(pushToSignup: self.$isLoginView)
                }
                else{
                    Login_Screen(pushToSignup: self.$isLoginView)
                }
            }
        }
    }
}


