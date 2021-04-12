//
//  Popular.swift
//  FoodOrdering2
//
//  Created by Maxim Macari on 12/4/21.
//

import SwiftUI

//Model and sample

struct Popular: Identifiable {
    var id = UUID().uuidString
    var title: String
    var description: String
    var image: String
    var price: String
}

var popularItems = [
    Popular(title: "Pasta Carbonara", description: "cream & mushrooms", image: "carbonara", price: "11.00"),
    Popular(title: "Grill Beef", description: "Vael & potatoes", image: "beaf", price: "14.90")
]
