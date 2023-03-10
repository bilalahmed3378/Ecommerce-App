//
//  MainTabContainer.swift
//  Ecommerce App
//
//  Created by Bilal Ahmed on 05/01/2023.
//

import SwiftUI

struct MainTabContainer: View {
    @State var selectedTab : Int = 0

    var body: some View {
        ZStack{
            
            VStack{
                
                if (self.selectedTab == 0){
                    HomeTab(selectedTab: self.$selectedTab)
                }
                else if (self.selectedTab == 1){
                    SavedTab(selectedTab: self.$selectedTab)
                }
                else if (self.selectedTab == 2){
                    CartScreen()
                }
                else{
                    
                }
                
                
                
                Spacer()
                
               
                
            }
            
            
            // shadow
            VStack{
                Spacer()
                HStack{
                    Spacer()
                    HStack{Spacer()
                        .frame(height: 30)}
                }
                .padding(.top,20)
                .background(RoundedCorners(tl: 15, tr: 15, bl: 0, br: 0).fill(.black))
                .shadow(radius: 5,  y: -4)
            }
            
            // bottom bar
            VStack{
                Spacer()
                HStack{
                    
                   Group{
                       Spacer()
                    
                    // home button
                    Button(action: {
                        withAnimation{
                            self.selectedTab = 0
                        }
                    }){
                        VStack{
                            Image(AppImages.homeIconBlack)
                                .resizable()
                                .frame(width: 28, height: 28)
                            
                            Text("Home")
                                .foregroundColor(.black)
                        }
                        .opacity(self.selectedTab == 0 ? 1 : 0.5)
                       
                    }
                    
                       
                   }
                    
                    Spacer()
                    
                    // heart button
                    Button(action: {
                        withAnimation{
                            self.selectedTab = 1
                        }
                    }){
                        VStack{
                            Image(AppImages.heartIconBlack)
                                .resizable()
                                .frame(width: 28, height: 28)
                            
                            Text("Saved")
                                .foregroundColor(.black)
                        }
                        .opacity(self.selectedTab == 1 ? 1 : 0.5)
                        
                    }
                    
                    Spacer()
                    
                    // cart button
                    Button(action: {
                        withAnimation{
                            self.selectedTab = 2
                        }
                    }){
                        VStack{
                            Image(AppImages.cartIconBlack)
                                .resizable()
                                .frame(width: 28, height: 28)
                            
                            Text("Cart")
                                .foregroundColor(.black)
                        }
                        .opacity(self.selectedTab == 2 ? 1 : 0.5)

                       
                    }
                    
                    Spacer()
                    
                    // setting button
                    Button(action: {
                        withAnimation{
                            self.selectedTab = 3
                        }
                    }){
                        VStack{
                            Image(AppImages.settingIconBlack)
                                .resizable()
                                .frame(width: 28, height: 28)
                            
                            Text("Setting")
                                .foregroundColor(.black)
                        }
                        .opacity(self.selectedTab == 3 ? 1 : 0.5)

                       
                    }
                    
                    Spacer()
                    
                   
                }
                .padding(.top,20)
                .padding(.bottom,20)
                .background(RoundedCorners(tl: 15, tr: 15, bl: 0, br: 0).fill(.white))
                
            }
        }
        .navigationBarHidden(true)
        .edgesIgnoringSafeArea(.bottom)
        .onAppear(perform: {
            UIScrollView.appearance().bounces = true
        })
        
    }
}


struct RoundedCorners: Shape {
    
    var tl: CGFloat = 0.0
    var tr: CGFloat = 0.0
    var bl: CGFloat = 0.0
    var br: CGFloat = 0.0
    
    func path(in rect: CGRect) -> Path {
        
        var path = Path()
        
        let w = rect.size.width
        let h = rect.size.height
        
        // Make sure we do not exceed the size of the rectangle
        let tr = min(min(self.tr, h/2), w/2)
        let tl = min(min(self.tl, h/2), w/2)
        let bl = min(min(self.bl, h/2), w/2)
        let br = min(min(self.br, h/2), w/2)
        
        path.move(to: CGPoint(x: w / 2.0, y: 0))
        path.addLine(to: CGPoint(x: w - tr, y: 0))
        path.addArc(center: CGPoint(x: w - tr, y: tr), radius: tr,
                    startAngle: Angle(degrees: -90), endAngle: Angle(degrees: 0), clockwise: false)
        
        path.addLine(to: CGPoint(x: w, y: h - br))
        path.addArc(center: CGPoint(x: w - br, y: h - br), radius: br,
                    startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 90), clockwise: false)
        
        path.addLine(to: CGPoint(x: bl, y: h))
        path.addArc(center: CGPoint(x: bl, y: h - bl), radius: bl,
                    startAngle: Angle(degrees: 90), endAngle: Angle(degrees: 180), clockwise: false)
        
        path.addLine(to: CGPoint(x: 0, y: tl))
        path.addArc(center: CGPoint(x: tl, y: tl), radius: tl,
                    startAngle: Angle(degrees: 180), endAngle: Angle(degrees: 270), clockwise: false)
        path.closeSubpath()

        return path
    }
}

