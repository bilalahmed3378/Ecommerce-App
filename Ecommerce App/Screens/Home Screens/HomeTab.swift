//
//  HomeTab.swift
//  Ecommerce App
//
//  Created by Bilal Ahmed on 25/01/2023.
//

import SwiftUI

struct HomeTab: View {
    @State private var searchText = ""
    @State var tagsList : Array<String> = ["All" , "Men" , "Women" , "Kids"]
    @State var selectedTag : String = "All"
    @Binding var selectedTab : Int
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

                // Search bar
                HStack{
                    
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
                
                // filter scroll view
                ScrollView(.horizontal,showsIndicators: false){
                    HStack{
                        ForEach(self.tagsList , id:\.self){ tag in
                            Button(action: {
                                withAnimation{
                                    self.selectedTag = tag
                                }
                            }){
                                Text(tag)
                                    .font(AppFonts.ceraPro_14)
                                    .foregroundColor(self.selectedTag == tag ? .white : .black)
                                    .padding(10)
                                    .padding(.leading,5)
                                    .padding(.trailing,5)
                                    .background(RoundedRectangle(cornerRadius: 10).fill(self.selectedTag == tag ? Color.black : AppColors.TextFieldColor))
                            }
                            .padding(.leading, tag == tagsList[0] ? 0 : 10)
                            
                        }
                    }
                   
                }
                .padding(.top,10)
                
                
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


struct ItemCard : View{
    
    

    @Binding var selectedTab : Int
    
    
    var body: some View{
        
        
        
        NavigationLink(destination: ItemsDetailViewScreen(selectedTab: self.$selectedTab), label: {
            VStack(spacing:0){
                
                ZStack{
                    // user image
                    Image(uiImage: UIImage(named: AppImages.itemCardPic)!)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 150 , height: 150)
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
                    
                }

                
                
                // content
                Spacer()
                
                // item name
                HStack{
                    Text("Regular t-shirt")
                        .font(AppFonts.ceraPro_14)
                        .foregroundColor(.black)
                        .lineLimit(2)
                    Spacer()
                }
                .padding(.bottom,5)
//                .padding(.leading,20)
//                .padding(.trailing,20)
                
                // item price
                HStack{
                    
                        Text("PKR 1644")
                            .font(AppFonts.ceraPro_14)
                            .foregroundColor(AppColors.TextColor)
                            .lineLimit(1)
                        
                    Spacer()
                }
                .padding(.bottom,20)
//                .padding(.leading,20)
//                .padding(.trailing,20)
               
                
            }
            .frame(width: 150, height: 200)
            .background(RoundedRectangle(cornerRadius: 20).fill(Color.white))
            .padding(.bottom,10)
            
        
        })
           
        
    }
    
}

