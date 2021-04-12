//
//  Home.swift
//  FoodOrdering2
//
//  Created by Maxim Macari on 12/4/21.
//

import SwiftUI

struct Home: View {
    
    @State var selectedCategory: Category = categories.first!
    @State var selectedTab: String = "house"
        
    init(){
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        VStack(spacing: 0){
            TabView{
                LandingPage(selectedCategory: $selectedCategory)
                    .tag("house")
                
                Color.pink
                    .tag("heart")
                
                Color.yellow
                    .tag("bell")
                
                Color.red
                    .tag("cart")
            }
            
            //Custom Tab bar
            CustomTabBar(selectedTab: $selectedTab)
        }
        .ignoresSafeArea()
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

extension View {
    func getRect() -> CGRect {
        return UIScreen.main.bounds
    }
}
