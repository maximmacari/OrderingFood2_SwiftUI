//
//  PopularItemRowView.swift
//  FoodOrdering2
//
//  Created by Maxim Macari on 12/4/21.
//

import SwiftUI

struct PopularItemRowView: View {
    
    var item: Popular
    
    var body: some View {
        VStack(spacing: 8, content: {
            Image(systemName: "flame")
                .font(.footnote)
                .foregroundColor(Color.red)
                .padding(8)
                .background(Color.orange.opacity(0.1))
                .clipShape(Circle())
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(-10)
                
            
            Image(item.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: getRect().width / 3)
            
            Text("\(item.title)")
                .fontWeight(.bold)
            
            Text(item.description)
                .font(.footnote)
                .foregroundColor(Color.gray)
            
            (
                Text("€")
                    .font(.footnote)
                    .foregroundColor(Color.pink.opacity(0.9))
                    +
                    Text("\(item.price)")
                    .font(.title2)
                    .foregroundColor(.black)
            )
            .fontWeight(.bold)
            .padding(.top, 8)
            
            
        })
        .padding()
        .background(Color.white)
        .cornerRadius(25)
        .shadow(color: Color.black.opacity(0.04), radius: 5, x: 5, y: 5)
    }
}

struct PopularItemRowView_Previews: PreviewProvider {
    static var previews: some View {
        PopularItemRowView(item: popularItems.first!)
    }
}
