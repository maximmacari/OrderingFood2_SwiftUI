//
//  LandingPage.swift
//  FoodOrdering2
//
//  Created by Maxim Macari on 12/4/21.
//

import SwiftUI

struct LandingPage: View {
    
    @Binding var selectedCategory: Category
    
    var body: some View {
        VStack{
            HStack{
                Button(action: {
                    
                }, label: {
                    Image(systemName: "circle.grid.2x2")
                        .font(.title2)
                        .padding(10)
                        .background(Color.pink.opacity(0.12))
                        .foregroundColor(Color.pink.opacity(0.9))
                        .cornerRadius(8)
                })
                
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "person")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                        .font(.title2)
                        .padding(10)
                        .background(Color.black.opacity(0.08))
                        .foregroundColor(Color.pink.opacity(0.9))
                        .cornerRadius(8)
                })
            }
            .overlay(
                HStack{
                        Image(systemName: "mappin")
                            .resizable()
                            .renderingMode(.template)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 18, height: 18)
                            .foregroundColor(Color.pink.opacity(0.9))
                    
                    Text("Dubai, United Arab Emirates")
                        .font(.footnote)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                }
            )
            .padding(.horizontal)
            
            ScrollView(.vertical, showsIndicators: false, content: {
                VStack(alignment: .leading, spacing: 15){
                    //top view
                    HStack(spacing: 20){
                        VStack(alignment: .leading, spacing: 8, content: {
                            (
                                Text("The fastest delivery ")
                                +
                                Text("Food")
                                    .foregroundColor(.red)
                            )
                            .font(.title2)
                            .fontWeight(.bold)
                            
                            //Button order
                            Button(action: {
                                
                            }, label: {
                                Text("Order Now")
                                    .font(.footnote)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                                    .padding(.vertical, 10)
                                    .padding(.horizontal)
                                    .background(Color.pink)
                                    .clipShape(Capsule())
                            })
                        })
                        
                        Spacer(minLength: 0)
                        
                        Image("deliver-man")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: getRect().width / 3)
                            
                    }
                    .padding()
                    .background(Color.yellow.opacity(0.28))
                    .cornerRadius(15)
                    .padding(.horizontal)
                    
                    //Categories
                    Text("Categories")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding()
                    
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        HStack(spacing: 12){
                            ForEach(categories){ category in
                                HStack(spacing: 10){
                                    Image("\(category.image)-icon")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 18, height: 18)
                                        .padding(6)
                                        .background(selectedCategory.id == category.id ? Color.white : Color.clear)
                                        .clipShape(Circle())
                                    
                                    Text("\(category.title)")
                                        .fontWeight(.bold)
                                        .foregroundColor(selectedCategory.id == category.id ? Color.white : Color.black)
                                }
                                .padding(.vertical, 12)
                                .padding(.horizontal)
                                .background( selectedCategory.id == category.id ? Color.pink.opacity(0.9) : Color.gray.opacity(0.06))
                                .clipShape(Capsule())
                                .shadow(color: Color.black.opacity(0.05), radius: 5, x: 5, y: 5)
                                .onTapGesture {
                                    withAnimation(.spring()){
                                        selectedCategory = category
                                    }
                                }
                            }
                        }
                        .padding(.horizontal)
                        
                    })
                    
                    HStack{
                        Text("Popular Now")
                            .font(.title2)
                            .fontWeight(.bold)
                        
                        Spacer()
                        
                        Button(action: {}, label: {
                            HStack(spacing: 6){
                                Text("Viwe All")
                                    .font(.footnote)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color.pink.opacity(0.9))
                                
                                Image(systemName: "chevron.right")
                                    .font(.footnote)
                                    .foregroundColor(.white)
                                    .padding(.vertical, 4)
                                    .padding(.horizontal, 6)
                                    .background(Color.pink.opacity(0.9))
                                    .cornerRadius(5)
                            }
                        })
                    }
                    .padding()
                    .padding(.top, 10)
                    
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        HStack(spacing: 20){
                            ForEach(popularItems){ popular in
                                PopularItemRowView(item: popular)
                            }
                        }
                    })
                    .padding()
                    .padding(.leading, 10)
                }
                .padding(.vertical)
            })
        }
        //light bg color
        .background(Color.black.opacity(0.03).ignoresSafeArea())
    }
}

struct LandingPage_Previews: PreviewProvider {
    static var previews: some View {
        LandingPage(selectedCategory: .constant(Category(image: "hamburger", title: "Hamburger")))
    }
}
